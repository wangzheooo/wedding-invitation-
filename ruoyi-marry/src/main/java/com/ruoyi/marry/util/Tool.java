package com.ruoyi.marry.util;

import org.springframework.util.StringUtils;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Tool {

    public static String getId() {
        String id = "";
        // 获取当前时间戳
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");
        String temp = sf.format(new Date());
        // 获取6位随机数
        int random = (int) ((Math.random() + 1) * 100000);
        id = temp + random;
        return id;
    }

    /**
     * 编码
     */
    public static String encoder(String originStr) {
        if (StringUtils.isEmpty(originStr)) {
            return originStr;
        }
        try {
            BASE64Encoder encoder = new BASE64Encoder();
            byte[] bytes = originStr.getBytes("UTF-8");
            String encode = encoder.encode(bytes);
            return encode;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return originStr;
        }
    }

    /*
     * 解码
     * 此功能是mysql没有utf8mb4时候用的,用于表情转换,,,现在这功能木有用了
     * */
    public static String decoder(String originStr) {
        BASE64Decoder decoder = new BASE64Decoder();
        if (!StringUtils.isEmpty(originStr)) {
            try {
                originStr = new String(decoder.decodeBuffer(originStr), "UTF-8");
//                originStr = Base64.getEncoder().encodeToString(encrypt(data.getBytes("UTF-8"), format(key)));

            } catch (IOException e) {
                e.printStackTrace();
                return originStr;
            }
        }
        return originStr;
    }

    /*
    * 访客头像
    * */
    public static String getPicture() {
//        return "http://r.photo.store.qq.com/psb?/V13E2po72ki5ls/m.6hRGTOtoX0WJrKIyvu5s8yHIR74YViqYsXUSXxIic!/r/dL4AAAAAAAAA";
        return "avatar_visitor.png";
    }

    public static  int get_random(int start,int end){
        return (int)(Math.random()*(end-start+1)+start);
    }

    /*
     * 获取访客名称
     * */
    public static int getName() {
        return get_random(100000,999999);
    }
}