package com.ruoyi.marry.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 留言管理对象 t_bless_comment
 *
 * @author user_marry
 * @date 2020-11-24
 */
public class TBlessComment extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 主表ID
     */
    private Integer id;

    /**
     * openId
     */
    @Excel(name = "openId")
    private String openId;

    /**
     * 留言内容
     */
    @Excel(name = "留言内容")
    private String comment;

    /**
     * 微信名
     */
    @Excel(name = "微信名")
    private String nickName;

    /**
     * 头像
     */
    @Excel(name = "头像")
    private String nickImage;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getOpenId() {
        return openId;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getComment() {
        return comment;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickImage(String nickImage) {
        this.nickImage = nickImage;
    }

    public String getNickImage() {
        return nickImage;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("openId", getOpenId())
                .append("comment", getComment())
                .append("nickName", getNickName())
                .append("nickImage", getNickImage())
                .append("createTime", getCreateTime())
                .toString();
    }
}
