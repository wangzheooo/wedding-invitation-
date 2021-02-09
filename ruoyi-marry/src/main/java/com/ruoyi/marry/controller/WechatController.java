package com.ruoyi.marry.controller;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.marry.service.impl.WechatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * 小程序Controller
 * 1.如果为了安全,参数传递可以加密传输,接口安全可以加验签
 *
 * @author user_marry
 * @date 2020-11-19
 */
@RestController
public class WechatController extends BaseController {
    @Autowired
    WechatService wechatService;

    @GetMapping("/wechat/control")
    public String control(HttpServletRequest request) {
        String flag = request.getParameter("flag");
        if (flag.equals("GET_OPENID")) {
            return wechatService.getOpenId(request);
        } else if (flag.equals("GET_IMAGE")) {
            return wechatService.getImage(request);
        } else if (flag.equals("SAVE_USER")) {
            return wechatService.saveUser(request);
        } else if (flag.equals("GET_MARRYINFO")) {
            return wechatService.getMarryInfo(request);
        } else if (flag.equals("GET_PRAISE")) {
            return wechatService.getPraise(request);
        } else if (flag.equals("SAVE_PRAISE")) {
            return wechatService.savePraise(request);
        } else if (flag.equals("GET_COMMENT")) {
            return wechatService.getComment(request);
        } else if (flag.equals("SAVE_COMMENT")) {
            return wechatService.saveComment(request);
        } else if (flag.equals("GET_GOLDINFO")) {
            return wechatService.getGoldInfo(request);
        } else if (flag.equals("GET_GOLD")) {
            return wechatService.getGold(request);
        } else if (flag.equals("UPDATE_GOLD")) {
            return wechatService.updateGold(request);
        } else if (flag.equals("SAVE_GOLD")) {
            return wechatService.saveGold(request);
        } else if (flag.equals("GET_LEADERBOARD")) {
            return wechatService.geLeaderboard(request);
        } else if (flag.equals("GET_BARRAGE")) {
            return wechatService.getBarrage(request);
        }  else if (flag.equals("GET_USER_INFO")) {
            return wechatService.getUserInfo(request);
        }else {
            return "";
        }
    }

}
