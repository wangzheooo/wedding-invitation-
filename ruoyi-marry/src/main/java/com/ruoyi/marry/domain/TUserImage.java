package com.ruoyi.marry.domain;

import lombok.Data;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.Date;

/**
 * 婚纱照对象 t_user_image
 *
 * @author user_marry
 * @date 2020-11-19
 */
@Data
public class TUserImage extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 主表ID
     */
    private String id;

    /**
     * 图片链接
     */
    @Excel(name = "图片链接")
    private String imageUrl;

    /**
     * 图片链接拼接
     */
    @Excel(name = "图片链接")
    private String imageUrlFinally;

    /**
     * 图片显示顺序
     */
    @Excel(name = "图片显示顺序")
    private Integer seq;

    /**
     * 图片类型,001婚纱照,002小程序请柬封面,003首页海报,004分享
     */
    @Excel(name = "图片类型")
    private String type;

    /**
     * 创建时间
     */
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createTime;
}
