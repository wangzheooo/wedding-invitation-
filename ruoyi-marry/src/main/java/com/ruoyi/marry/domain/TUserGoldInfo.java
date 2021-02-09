package com.ruoyi.marry.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 礼物管理对象 t_user_gold_info
 *
 * @author user_marry
 * @date 2020-11-25
 */
public class TUserGoldInfo extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 主表ID
     */
    private Long id;

    /**
     *
     */
    @Excel(name = "")
    private String giftName;

    /**
     *
     */
    @Excel(name = "")
    private String giftUrl;

    /**
     *
     */
    @Excel(name = "")
    private Integer giftGold;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setGiftName(String giftName) {
        this.giftName = giftName;
    }

    public String getGiftName() {
        return giftName;
    }

    public void setGiftUrl(String giftUrl) {
        this.giftUrl = giftUrl;
    }

    public String getGiftUrl() {
        return giftUrl;
    }

    public void setGiftGold(Integer giftGold) {
        this.giftGold = giftGold;
    }

    public Integer getGiftGold() {
        return giftGold;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("giftName", getGiftName())
                .append("giftUrl", getGiftUrl())
                .append("giftGold", getGiftGold())
                .toString();
    }
}
