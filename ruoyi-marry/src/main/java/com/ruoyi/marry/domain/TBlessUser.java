package com.ruoyi.marry.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 点赞管理对象 t_bless_user
 *
 * @author user_marry
 * @date 2020-11-24
 */
@Data
public class TBlessUser extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 主表ID
     */
    @Excel(name = "主表ID")
    private Integer id;

    /**
     * openId
     */
    @Excel(name = "openId")
    private String openId;

    /**
     * nickImage
     */
    @Excel(name = "nickImage")
    private String nickImage;

    /**
     * nickName
     */
    @Excel(name = "nickName")
    private String nickName;


}
