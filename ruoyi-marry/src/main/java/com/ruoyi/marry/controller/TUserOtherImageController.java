package com.ruoyi.marry.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.marry.domain.ConstantProperties;
import com.ruoyi.marry.domain.TUserImage;
import com.ruoyi.marry.service.ITUserImageService;
import com.ruoyi.marry.util.AliyunOSSUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

/**
 * 婚纱照Controller
 *
 * @author user_marry
 * @date 2020-11-19
 */
@Controller
@RequestMapping("/marry/userOtherImage")
public class TUserOtherImageController extends BaseController {
    private static final Logger log = LoggerFactory.getLogger(TUserOtherImageController.class);
    private String prefix = "marry/userImage";

    @Autowired
    private ITUserImageService tUserImageService;

    @Autowired
    private AliyunOSSUtil aliyunOSSUtil;

    @Autowired
    private ConstantProperties constantProperties;

    @Autowired
    JdbcTemplate jdbcTemplate;

    @RequiresPermissions("marry:userImage:view")
    @GetMapping()
    public String userOtherImager(ModelMap mmap) {
        TUserImage tUserImage;

        //获取小程序封面照片
        tUserImage = new TUserImage();
        tUserImage.setType("002");
        List<TUserImage> list002 = tUserImageService.selectTUserImageList(tUserImage);
        if (StringUtils.isNotEmpty(list002)) {
            tUserImage = list002.get(0);
            tUserImage.setImageUrlFinally("https://" + constantProperties.getBucketname() + "." + constantProperties.getEndpoint() + "/" + tUserImage.getImageUrl());
            mmap.put("tUserOtherImage002", tUserImage);
        } else {
            mmap.put("tUserOtherImage002", "");
        }

        //获取首页海报照片
        tUserImage = new TUserImage();
        tUserImage.setType("003");
        List<TUserImage> list003 = tUserImageService.selectTUserImageList(tUserImage);
        if (StringUtils.isNotEmpty(list003)) {
            tUserImage = list003.get(0);
            tUserImage.setImageUrlFinally("https://" + constantProperties.getBucketname() + "." + constantProperties.getEndpoint() + "/" + tUserImage.getImageUrl());
            mmap.put("tUserOtherImage003", tUserImage);
        } else {
            mmap.put("tUserOtherImage003", "");
        }

        //获取分享页照片
        tUserImage = new TUserImage();
        tUserImage.setType("004");
        List<TUserImage> list004 = tUserImageService.selectTUserImageList(tUserImage);
        if (StringUtils.isNotEmpty(list004)) {
            tUserImage = list004.get(0);
            tUserImage.setImageUrlFinally("https://" + constantProperties.getBucketname() + "." + constantProperties.getEndpoint() + "/" + tUserImage.getImageUrl());
            mmap.put("tUserOtherImage004", tUserImage);
        } else {
            mmap.put("tUserOtherImage004", "");
        }

        mmap.put("channelList", "");
        return prefix + "/userOtherImage";
    }

    /**
     * 新增婚纱照
     */
    @GetMapping("/image002")
    public String image002(ModelMap mmap) {
        mmap.put("type", "002");
        return prefix + "/image";
    }

    /**
     * 新增婚纱照
     */
    @GetMapping("/image003")
    public String image003(ModelMap mmap) {
        mmap.put("type", "003");
        return prefix + "/image";
    }

    /**
     * 新增婚纱照
     */
    @GetMapping("/image004")
    public String image004(ModelMap mmap) {
        mmap.put("type", "004");
        return prefix + "/image";
    }

}
