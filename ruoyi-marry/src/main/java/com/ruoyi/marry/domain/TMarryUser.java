package com.ruoyi.marry.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * 小程序设置对象 t_marry_user
 *
 * @author user_marry
 * @date 2020-11-19
 */
@Data
public class TMarryUser extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 主表ID
     */
    private Long id;

    /**
     * appid
     */
    @Excel(name = "appid")
    private String appid;

    /**
     * appsecret
     */
    @Excel(name = "appsecret")
    private String appsecret;

    /**
     * 评论开关,1开,0关
     */
    @Excel(name = "评论开关,1开,0关")
    private String commentStatus;

    /**
     * 祝福开关,1开,0关
     */
    @Excel(name = "祝福开关,1开,0关")
    private String blessStatus;

    /**
     * 送礼物开关,1开,0关
     */
    @Excel(name = "送礼物开关,1开,0关")
    private String goldStatus;

    /**
     * 弹幕开关,1开,0关
     */
    @Excel(name = "弹幕开关,1开,0关")
    private String barrageStatus;

    /**
     * 音乐开关,1开,0关
     */
    @Excel(name = "音乐开关,1开,0关")
    private String musicStatus;

    /**
     * 新郎名字
     */
    @Excel(name = "新郎名字")
    private String bridegroomName;

    /**
     * 新娘名字
     */
    @Excel(name = "新娘名字")
    private String brideName;

    /**
     * 新郎电话
     */
    @Excel(name = "新郎电话")
    private String bridegroomTel;

    /**
     * 新娘电话
     */
    @Excel(name = "新娘电话")
    private String brideTel;

    /**
     * 阳历日期
     */
    @Excel(name = "阳历日期")
    private String solarCalendar;

    /**
     * 农历日期
     */
    @Excel(name = "农历日期")
    private String lunarCalendar;

    /**
     * 经度
     */
    @Excel(name = "经度")
    private String longitude;

    /**
     * 维度
     */
    @Excel(name = "维度")
    private String latitude;

    /**
     * 地址
     */
    @Excel(name = "地址")
    private String addr;

    /**
     * 背景音乐名称
     */
    @Excel(name = "背景音乐名称")
    private String musicName;

    /**
     * 背景音乐链接
     */
    @Excel(name = "背景音乐链接")
    private String musicUrl;
}
