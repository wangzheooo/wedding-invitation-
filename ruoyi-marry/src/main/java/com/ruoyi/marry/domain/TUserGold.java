package com.ruoyi.marry.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户金币管理对象 t_user_gold
 *
 * @author user_marry
 * @date 2020-11-25
 */
@Data
public class TUserGold extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 主表ID
     */
    private Long id;

    /**
     * openId
     */
    @Excel(name = "openId")
    private String openid;

    /**
     * 金币
     */
    @Excel(name = "金币")
    private Integer gold;

    /**
     * nickName
     */
    @Excel(name = "nickName")
    private String nickName;


    /**
     * avatarUrl
     */
    @Excel(name = "avatarUrl")
    private String avatarUrl;


}
