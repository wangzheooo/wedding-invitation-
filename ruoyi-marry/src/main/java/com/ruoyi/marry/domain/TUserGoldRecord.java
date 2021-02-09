package com.ruoyi.marry.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 礼物记录对象 t_user_gold_record
 *
 * @author user_marry
 * @date 2020-11-25
 */
@Data
public class TUserGoldRecord extends BaseEntity {
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
     * 礼物名
     */
    @Excel(name = "礼物名")
    private String giftName;

    /**
     * 礼物ID
     */
    @Excel(name = "礼物ID")
    private Long giftId;

    /**
     * 礼物价格
     */
    @Excel(name = "礼物价格")
    private Integer giftGold;

    private String giftUrl;

    private String nickName;
    private String avatarUrl;

    private Integer sumGold;
}
