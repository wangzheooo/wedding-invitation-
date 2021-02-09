package com.ruoyi.marry.domain;

import lombok.Data;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户浏览记录表对象 t_user_record
 *
 * @author user_marry
 * @date 2020-11-23
 */
@Data
public class TUserRecord extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 主表ID
     */
    private Long id;

    /**
     * openId
     */
    @Excel(name = "openId")
    private String openId;

    /**
     * 用户头像
     */
    @Excel(name = "用户头像")
    private String avatarUrl;

    /**
     * 城市
     */
    @Excel(name = "城市")
    private String city;

    /**
     * 微信名
     */
    @Excel(name = "微信名")
    private String nickName;

    /**
     * 省份
     */
    @Excel(name = "省份")
    private String province;
}
