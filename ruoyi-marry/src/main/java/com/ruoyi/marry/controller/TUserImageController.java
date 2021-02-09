package com.ruoyi.marry.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.common.utils.security.PermissionUtils;
import com.ruoyi.marry.domain.ConstantProperties;
import com.ruoyi.marry.util.AliyunOSSUtil;
import org.apache.poi.util.StringUtil;
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
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.marry.domain.TUserImage;
import com.ruoyi.marry.service.ITUserImageService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 婚纱照Controller
 *
 * @author user_marry
 * @date 2020-11-19
 */
@Controller
@RequestMapping("/marry/userImage")
public class TUserImageController extends BaseController {
    private static final Logger log = LoggerFactory.getLogger(TUserImageController.class);
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
    public String userImage() {
        return prefix + "/userImage";
    }

    /**
     * 查询婚纱照列表
     */
    @RequiresPermissions("marry:userImage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TUserImage tUserImage) {
        tUserImage.setType("001");
        startPage();
        List<TUserImage> list = tUserImageService.selectTUserImageList(tUserImage);
        if (StringUtils.isNotEmpty(list)) {
            for (TUserImage tui : list) {
                tui.setImageUrlFinally("https://" + constantProperties.getBucketname() + "." + constantProperties.getEndpoint() + "/" + tui.getImageUrl());
            }
        }
        return getDataTable(list);
    }

    /**
     * 导出婚纱照列表
     */
    @RequiresPermissions("marry:userImage:export")
    @Log(title = "婚纱照", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TUserImage tUserImage) {
        List<TUserImage> list = tUserImageService.selectTUserImageList(tUserImage);
        ExcelUtil<TUserImage> util = new ExcelUtil<TUserImage>(TUserImage.class);
        return util.exportExcel(list, "userImage");
    }

    /**
     * 新增婚纱照
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增婚纱照
     */
    @GetMapping("/image")
    public String image(ModelMap mmap) {
        mmap.put("type", "001");
        return prefix + "/image";
    }

    /**
     * 新增保存婚纱照
     */
    @RequiresPermissions("marry:userImage:add")
    @Log(title = "保存婚纱照", businessType = BusinessType.INSERT)
    @PostMapping("/addImage")
    @ResponseBody
    public AjaxResult addImage(@RequestParam("imageFile") MultipartFile file, String type) {
        try {
            if (!file.isEmpty()) {
                String filename = file.getOriginalFilename() + ".jpg";
                if (!"".equals(filename.trim())) {
                    File newFile = new File(filename);
                    FileOutputStream os = new FileOutputStream(newFile);
                    os.write(file.getBytes());
                    os.close();
                    file.transferTo(newFile);
                    //上传到OSS
                    String uploadUrl = aliyunOSSUtil.upload(newFile);

                    if (!type.equals("001")) {
                        //002,003,004类型图片只能有一张,所以要删除数据库和oss里的其他同类型文件
                        TUserImage tUserImage = new TUserImage();
                        tUserImage.setType(type);
                        List<TUserImage> tUserImageList = tUserImageService.selectTUserImageList(tUserImage);
                        if (StringUtils.isNotEmpty(tUserImageList)) {
                            String imageUrl = tUserImageList.get(0).getImageUrl();
                            aliyunOSSUtil.deleteBlog(imageUrl);
                        }
                        tUserImageService.deleteTUserImageByType(type);
                    }
                    TUserImage tUserImage = new TUserImage();
                    String uuid = UUID.randomUUID().toString().replaceAll("-", "");
                    tUserImage.setId(uuid);
                    tUserImage.setImageUrl(uploadUrl);
                    tUserImage.setType(type);
                    tUserImage.setSeq(100);
                    tUserImage.setCreateTime(new Date());
                    return toAjax(tUserImageService.insertTUserImage(tUserImage));
                }
            }
        } catch (Exception e) {
            log.error("保存图片失败！", e);
            e.printStackTrace();
            return error(e.getMessage());
        }
        return error();
    }

    /**
     * 修改婚纱照
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap) {
        TUserImage tUserImage = tUserImageService.selectTUserImageById(id);
        mmap.put("tUserImage", tUserImage);
        return prefix + "/edit";
    }

    /**
     * 修改保存婚纱照
     */
    @RequiresPermissions("marry:userImage:edit")
    @Log(title = "婚纱照", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TUserImage tUserImage) {
        return toAjax(tUserImageService.updateTUserImage(tUserImage));
    }

    /**
     * 单元格修改
     */
    @PostMapping("/editCell")
    @ResponseBody
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult bhAll(String id, String field, String cellValue) {
        String sql = "update t_user_image set " + field + "=? where 1=1 and id=?";
        int i = jdbcTemplate.update(sql, new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement preparedStatement) throws SQLException {
                preparedStatement.setString(1, cellValue);
                preparedStatement.setString(2, id);
            }
        });
        if (i > 0) {
            return success();
        } else {
            return error();
        }
    }

    /**
     * 删除婚纱照
     */
    @RequiresPermissions("marry:userImage:remove")
    @Log(title = "婚纱照", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        TUserImage tUserImage = tUserImageService.selectTUserImageById(ids);
        String fileName = tUserImage.getImageUrl();
        aliyunOSSUtil.deleteBlog(fileName);
        return toAjax(tUserImageService.deleteTUserImageByIds(ids));
    }
}
