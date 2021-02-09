package com.ruoyi.marry.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.marry.domain.*;
import com.ruoyi.marry.service.*;
import com.ruoyi.marry.util.HttpRequestor;
import com.ruoyi.marry.util.Tool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Service
public class WechatService {

    @Autowired
    private ITMarryUserService tMarryUserService;

    @Autowired
    private ITUserService tUserService;

    @Autowired
    private ITUserRecordService tUserRecordService;

    @Autowired
    private ITUserImageService tUserImageService;

    @Autowired
    private ConstantProperties constantProperties;

    @Autowired
    private ITBlessUserService tBlessUserService;

    @Autowired
    private ITBlessCommentService tBlessCommentService;

    @Autowired
    private ITUserGoldInfoService tUserGoldInfoService;

    @Autowired
    private ITUserGoldService tUserGoldService;

    @Autowired
    private ITUserGoldRecordService tUserGoldRecordService;

    private static TMarryUser tMarryUser;//单例,marryUser信息

    private static String accessToken;//微信小程序的token

    private static Long expiresIn;//token有效期

    private static Long timeStamp;//获取token时的时间戳

    /*
     * 获取网络请求,返回openId
     * */
    public String getOpenId(HttpServletRequest request) {

        String code = request.getParameter("code");

        JSONObject JsonObject = new JSONObject();
        try {
            if (StringUtils.isNull(tMarryUser)) {
                List<TMarryUser> tMarryUserList = tMarryUserService.selectTMarryUserList(new TMarryUser());
                tMarryUser = tMarryUserList.get(0);
            }
            String requestUrl = "https://api.weixin.qq.com/sns/jscode2session?appid="
                    + tMarryUser.getAppid()
                    + "&secret="
                    + tMarryUser.getAppsecret()
                    + "&js_code="
                    + code
                    + "&grant_type=authorization_code";

            String result = new HttpRequestor().doGet(requestUrl);

            JSONObject resultJson = JSONObject.parseObject(result);
            String openid = (String) resultJson.get("openid");

            if (openid != null && !"".equals(openid)) {
                JsonObject.put("resultCode", "success");
                JsonObject.put("openid", openid);
            } else {
                JsonObject.put("resultCode", "fail");
                JsonObject.put("message", "获取openID失败！请重试！" + result);
            }
        } catch (Exception e) {
            JsonObject.put("resultCode", "fail");
            JsonObject.put("message", "服务器异常");
            e.printStackTrace();
        } finally {
            return JsonObject.toString();
        }
    }

    /*
     * 获取网络请求,返回Token
     * */
    public String getToken() {
        try {
            if (StringUtils.isNotEmpty(accessToken) && ((timeStamp + expiresIn * 1000 - 2000) > System.currentTimeMillis())) {
                //如果token有值,而且有效期没过
                return accessToken;
            } else {
                //tonken没有值,或者token的有效期过了

                if (StringUtils.isNull(tMarryUser)) {
                    //如果没有marryUser信息,就去后台获取
                    List<TMarryUser> tMarryUserList = tMarryUserService.selectTMarryUserList(new TMarryUser());
                    tMarryUser = tMarryUserList.get(0);
                }

                //get获取token信息
                String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type="
                        + "client_credential"
                        + "&appid="
                        + tMarryUser.getAppid()
                        + "&secret="
                        + tMarryUser.getAppsecret();

                String result = new HttpRequestor().doGet(requestUrl);
                JSONObject resultJson = JSONObject.parseObject(result);

                Integer errcode = (Integer) resultJson.get("errcode");

                if (StringUtils.isNull(errcode)) {
                    timeStamp = System.currentTimeMillis();
                    expiresIn = Long.valueOf((int) resultJson.get("expires_in"));
                    accessToken = (String) resultJson.get("access_token");

                    return accessToken;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    public String getImage(HttpServletRequest request) {
        JSONObject JsonObject = new JSONObject();
        List<TUserImage> tUserImageList = tUserImageService.selectTUserImageList(new TUserImage());

        List<TUserImage> tUserImages = new ArrayList<>();
        for (TUserImage tUserImage : tUserImageList) {
            tUserImage.setImageUrlFinally("https://" + constantProperties.getBucketname() + "." + constantProperties.getEndpoint() + "/" + tUserImage.getImageUrl());
            if (tUserImage.getType().equals("001")) {
                tUserImages.add(tUserImage);
                continue;
            } else {
                JsonObject.put("image" + tUserImage.getType(), tUserImage);
                continue;
            }
        }
        JsonObject.put("image001", tUserImages);
        return JsonObject.toString();
    }

    public String saveUser(HttpServletRequest request) {

        String openId = request.getParameter("openId");//openId有可能是这个:undefined,系统问题获取不到openId,就会返回"undefined"
        String userInfo = request.getParameter("userInfo");//userinfo如果为空,获取到的是"null"

        JSONObject JsonObject = new JSONObject();

        // 用户操作记录
        JSONObject info;
        String radomNum = "" + Tool.getName();

        try {
            //如果没有获取到openId,就生成6位数随机数代替
            if (null == openId || "".equals(openId) || "null".equals(openId) || "undefined".equals(openId)) {
                //能进到这里都是非常特殊情况,一般是系统问题,不是用户操作问题,因为不管用户受不授权,openid是肯定能获取到
                //这个时候,如果能获取到userinfo,就用头像字段当主键,日后更新根据头像链接更新,同时更新好几个表
                //一般这种情况极少发生,就如下解决了,这样的问题是用户每登录一次,系统就认为是又一个新人在登录
                openId = radomNum;
                info = new JSONObject();
                info.put("openId", openId);
                info.put("avatarUrl", Tool.getPicture());
                info.put("city", "---");
                info.put("nickName", "神秘访客" + radomNum);
                info.put("province", "---");
            } else {
                radomNum = openId.substring(openId.length() - 1 - 6, openId.length() - 1);

                //根据openid,判断用户是否早已经被记录到t_user
                TUser tUser = tUserService.selectTUserByOpenId(openId);

                if (tUser != null) {
                    //如果已经被记录过

                    //如果没获取到用户信息userinfo,则从后台获取用户信息
                    if (userInfo == null || "".equals(userInfo) || "null".equals(userInfo)) {
                        //这种情况是被记录后,又清空缓存,但是不能用访客记录了
                        info = new JSONObject();
                        info.put("avatarUrl", tUser.getAvatarUrl());
                        info.put("city", tUser.getCity());
                        info.put("nickName", tUser.getNickName());
                        info.put("province", tUser.getProvince());
                    } else {
                        info = JSONObject.parseObject(userInfo);
                    }

                    tUser.setAvatarUrl("" + info.get("avatarUrl"));
                    tUser.setCity("" + info.get("city"));
                    tUser.setNickName("" + info.get("nickName"));
                    tUser.setProvince("" + info.get("province"));
                    tUser.setUpdateTime(new Date());

                    tUserService.updateTUser(tUser);
                } else {
                    //如果之前没有被记录

                    //如果没获取到用户信息,则生成访客信息
                    if (userInfo == null || "".equals(userInfo) || "null".equals(userInfo)) {
                        info = new JSONObject();
                        info.put("openId", openId);
                        info.put("avatarUrl", Tool.getPicture());
                        info.put("city", "---");
                        info.put("nickName", "访客" + radomNum);
                        info.put("province", "---");
                    } else {
                        info = JSONObject.parseObject(userInfo);
                    }

                    tUser = new TUser();
                    tUser.setOpenId(openId);
                    tUser.setAvatarUrl("" + info.get("avatarUrl"));
                    tUser.setCity("" + info.get("city"));
                    tUser.setNickName("" + info.get("nickName"));
                    tUser.setProvince("" + info.get("province"));
                    tUser.setCreateTime(new Date());
                    tUserService.insertTUser(tUser);
                }
            }
            //新增用户纪录
            TUserRecord tUserRecord = new TUserRecord();
            tUserRecord.setOpenId(openId);
            tUserRecord.setAvatarUrl("" + info.get("avatarUrl"));
            tUserRecord.setCity("" + info.get("city"));
            tUserRecord.setNickName("" + info.get("nickName"));
            tUserRecord.setProvince("" + info.get("province"));
            tUserRecord.setCreateTime(new Date());
            tUserRecordService.insertTUserRecord(tUserRecord);
        } catch (Exception e) {
            e.printStackTrace();
            JsonObject.put("resultCode", "fail");
            JsonObject.put("message", "保存失败");
            return JsonObject.toString();
        }
        JsonObject.put("info", info);
        JsonObject.put("resultCode", "success");
        JsonObject.put("message", "保存成功");
        return JsonObject.toString();
    }

    public String getMarryInfo(HttpServletRequest request) {
        JSONObject JsonObject = new JSONObject();
        List<TMarryUser> tMarryUserList = tMarryUserService.selectTMarryUserList(new TMarryUser());
        if (StringUtils.isNotEmpty(tMarryUserList)) {
            JsonObject.put("resultCode", "success");
            JsonObject.put("tMarryUser", tMarryUserList.get(0));
        } else {
            JsonObject.put("resultCode", "fail");
            JsonObject.put("tMarryUser", "");
        }
        return JsonObject.toString();
    }

    public String getPraise(HttpServletRequest request) {
        JSONObject JsonObject = new JSONObject();
        List<TBlessUser> tBlessUserList = tBlessUserService.selectTBlessUserListAll();
        if (StringUtils.isNotEmpty(tBlessUserList)) {
            JsonObject.put("resultCode", "success");
            JsonObject.put("tBlessUserList", tBlessUserList);
        } else {
            JsonObject.put("resultCode", "fail");
            JsonObject.put("tBlessUserList", "");
        }
        return JsonObject.toString();
    }

    public String savePraise(HttpServletRequest request) {
        String openId = request.getParameter("openId");
        JSONObject JsonObject = new JSONObject();

        List<TBlessUser> tBlessUserList;
        try {
            if (null != openId && !"".equals(openId)) {
                TBlessUser tBlessUser = new TBlessUser();
                tBlessUser.setOpenId(openId);
                tBlessUserList = tBlessUserService.selectTBlessUserList(tBlessUser);

                if (StringUtils.isNotEmpty(tBlessUserList)) {
                    JsonObject.put("resultCode", "fail");
                    JsonObject.put("message", "你已经点过赞了");
                } else {
                    tBlessUserService.insertTBlessUser(tBlessUser);
                    JsonObject.put("resultCode", "success");
                    JsonObject.put("message", "点赞成功");
                }
            } else {
                JsonObject.put("resultCode", "fail");
                JsonObject.put("message", "没有获取到您的信息");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return JsonObject.toString();
    }

    public String getComment(HttpServletRequest request) {
        JSONObject JsonObject = new JSONObject();
        List<TBlessComment> tBlessCommentList = tBlessCommentService.selectTBlessComments();
        if (StringUtils.isNotEmpty(tBlessCommentList)) {
            JsonObject.put("resultCode", "success");
            JsonObject.put("tBlessCommentList", tBlessCommentList);
        } else {
            JsonObject.put("resultCode", "fail");
            JsonObject.put("tBlessCommentList", "");
        }
        return JsonObject.toString();
    }

    public String saveComment(HttpServletRequest request) {
        String comment = request.getParameter("comment");
        String openId = request.getParameter("openId");

        JSONObject JsonObject = new JSONObject();
        TUser tUser = tUserService.selectTUserByOpenId(openId);
        try {
            if (tUser != null) {

                String token = getToken();
                String requestUrl = "https://api.weixin.qq.com/wxa/msg_sec_check?access_token=" + token;
                Map<String, Object> parameterMap = new HashMap<String, Object>();
                parameterMap.put("content", comment);

                RestTemplate rest = new RestTemplate();
                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_JSON);
                HttpEntity requestEntity = new HttpEntity(parameterMap, headers);
                ResponseEntity<byte[]> entity = rest.exchange(requestUrl, HttpMethod.POST, requestEntity, byte[].class, new Object[0]);
                String json = new String(entity.getBody(), "utf-8");
                JSONObject resultJson = JSONObject.parseObject(json);

                int errcode = (int) resultJson.get("errcode");
                if (errcode != 0) {
                    comment = "喵喵喵";
                }

                TBlessComment tBlessComment = new TBlessComment();
                tBlessComment.setOpenId(openId);
                tBlessComment.setComment(comment);
                tBlessComment.setNickName(tUser.getNickName());
                tBlessComment.setNickImage(tUser.getAvatarUrl());
                tBlessComment.setCreateTime(new Date());
                tBlessCommentService.insertTBlessComment(tBlessComment);
                JsonObject.put("resultCode", "success");
                JsonObject.put("message", "留言成功");
            } else {
                JsonObject.put("resultCode", "fail");
                JsonObject.put("message", "没有获取到您的信息");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return JsonObject.toString();
    }

    public String getGoldInfo(HttpServletRequest request) {
        JSONObject JsonObject = new JSONObject();
        List<TUserGoldInfo> tUserGoldInfoList = tUserGoldInfoService.selectTUserGoldInfoList(new TUserGoldInfo());
        if (StringUtils.isNotEmpty(tUserGoldInfoList)) {
            JsonObject.put("resultCode", "success");
            JsonObject.put("tUserGoldInfoList", tUserGoldInfoList);
        } else {
            JsonObject.put("resultCode", "fail");
            JsonObject.put("tUserGoldInfoList", "");
        }
        return JsonObject.toString();
    }

    public String getGold(HttpServletRequest request) {
        String openId = request.getParameter("openId");

        JSONObject JsonObject = new JSONObject();
        JsonObject.put("resultCode", "fail");
        JsonObject.put("gold", 0);
        if (StringUtils.isNotEmpty(openId)) {
            TUserGold tUserGold = tUserGoldService.selectTUserGoldByOpenId(openId);
            if (tUserGold != null) {
                JsonObject.put("resultCode", "success");
                JsonObject.put("gold", tUserGold.getGold());
            }
        }
        return JsonObject.toString();
    }

    public String updateGold(HttpServletRequest request) {
        String openId = request.getParameter("openId");
        String id = request.getParameter("id");

        JSONObject JsonObject = new JSONObject();
        JsonObject.put("resultCode", "fail");
        JsonObject.put("message", "没有获取到您的信息");

        if (StringUtils.isNotEmpty(openId)) {
            TUserGoldInfo tUserGoldInfo = tUserGoldInfoService.selectTUserGoldInfoById(Long.parseLong(id));
            if (tUserGoldInfo != null) {
                TUserGold tUserGold = tUserGoldService.selectTUserGoldByOpenId(openId);
                if (tUserGold != null) {
                    Integer userGold = tUserGold.getGold();
                    Integer giftGold = tUserGoldInfo.getGiftGold();
                    if (userGold >= giftGold) {
                        tUserGold.setGold(userGold - giftGold);
                        tUserGoldService.updateTUserGold(tUserGold);

                        TUserGoldRecord tUserGoldRecord = new TUserGoldRecord();
                        tUserGoldRecord.setOpenid(openId);
                        tUserGoldRecord.setGiftId(tUserGoldInfo.getId());
                        tUserGoldRecord.setGiftGold(tUserGoldInfo.getGiftGold());
                        tUserGoldRecordService.insertTUserGoldRecord(tUserGoldRecord);

                        JsonObject.put("resultCode", "success");
                        JsonObject.put("message", "成功送出");
                    }
                }
            }
        }
        return JsonObject.toString();
    }

    public String saveGold(HttpServletRequest request) {
        String openId = request.getParameter("openId");

        JSONObject JsonObject = new JSONObject();
        JsonObject.put("resultCode", "fail");
        JsonObject.put("message", "异常");
        if (StringUtils.isNotEmpty(openId)) {
            TUserGold tUserGold = tUserGoldService.selectTUserGoldByOpenId(openId);
            if (tUserGold != null) {
                tUserGold.setGold(tUserGold.getGold() + 1);
                tUserGoldService.updateTUserGold(tUserGold);
            } else {
                tUserGold = new TUserGold();
                tUserGold.setOpenid(openId);
                tUserGold.setGold(1);
                tUserGoldService.insertTUserGold(tUserGold);
            }
            JsonObject.put("resultCode", "success");
            JsonObject.put("message", "成功");
        }
        return JsonObject.toString();
    }

    public String geLeaderboard(HttpServletRequest request) {
        String openId = request.getParameter("openId");

        JSONObject JsonObject = new JSONObject();

        List<TUserGold> listOfGold = tUserGoldService.getLeaderboardOfGold();
        JsonObject.put("listOfGold", listOfGold);
        List<TUserGoldRecord> listOfGift = tUserGoldRecordService.getLeaderboardOfGift();
        JsonObject.put("listOfGift", listOfGift);

        JsonObject.put("listGiftRecord", "");
        if (StringUtils.isNotEmpty(openId)) {
            List<TUserGoldRecord> listGiftRecord = tUserGoldRecordService.geGiftRecord(openId);
            if (StringUtils.isNotEmpty(listGiftRecord)) {
                JsonObject.put("listGiftRecord", listGiftRecord);
            }
        }
        return JsonObject.toString();
    }

    public String getBarrage(HttpServletRequest request) {
        JSONObject JsonObject = new JSONObject();

        List<TUserGoldRecord> tUserGoldRecordList = tUserGoldRecordService.getBarrage();
        if (StringUtils.isNotEmpty(tUserGoldRecordList)) {
            JsonObject.put("tUserGoldRecordList", tUserGoldRecordList);
        } else {
            JsonObject.put("tUserGoldRecordList", "");
        }
        return JsonObject.toString();
    }

    public String getUserInfo(HttpServletRequest request) {
        String openId = request.getParameter("openId");
        JSONObject JsonObject = new JSONObject();

        if (StringUtils.isNotEmpty(openId)) {
            TUser tUser = tUserService.selectTUserByOpenId(openId);
            JsonObject.put("tUser", tUser);
        }
        return JsonObject.toString();
    }

}
