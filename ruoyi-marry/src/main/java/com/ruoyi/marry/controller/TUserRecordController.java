package com.ruoyi.marry.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.marry.domain.TUserRecord;
import com.ruoyi.marry.service.ITUserRecordService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户浏览记录表Controller
 *
 * @author user_marry
 * @date 2020-11-23
 */
@Controller
@RequestMapping("/marry/userRecord")
public class TUserRecordController extends BaseController {
    private String prefix = "marry/userRecord";

    @Autowired
    private ITUserRecordService tUserRecordService;

    @RequiresPermissions("marry:userRecord:view")
    @GetMapping()
    public String userRecord() {
        return prefix + "/userRecord";
    }

    /**
     * 查询用户浏览记录表列表
     */
    @RequiresPermissions("marry:userRecord:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TUserRecord tUserRecord) {
        startPage();
        List<TUserRecord> list = tUserRecordService.selectTUserRecordList(tUserRecord);
        return getDataTable(list);
    }

    /**
     * 导出用户浏览记录表列表
     */
    @RequiresPermissions("marry:userRecord:export")
    @Log(title = "用户浏览记录表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TUserRecord tUserRecord) {
        List<TUserRecord> list = tUserRecordService.selectTUserRecordList(tUserRecord);
        ExcelUtil<TUserRecord> util = new ExcelUtil<TUserRecord>(TUserRecord.class);
        return util.exportExcel(list, "userRecord");
    }

    /**
     * 新增用户浏览记录表
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存用户浏览记录表
     */
    @RequiresPermissions("marry:userRecord:add")
    @Log(title = "用户浏览记录表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TUserRecord tUserRecord) {
        return toAjax(tUserRecordService.insertTUserRecord(tUserRecord));
    }

    /**
     * 修改用户浏览记录表
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        TUserRecord tUserRecord = tUserRecordService.selectTUserRecordById(id);
        mmap.put("tUserRecord", tUserRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户浏览记录表
     */
    @RequiresPermissions("marry:userRecord:edit")
    @Log(title = "用户浏览记录表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TUserRecord tUserRecord) {
        return toAjax(tUserRecordService.updateTUserRecord(tUserRecord));
    }

    /**
     * 删除用户浏览记录表
     */
    @RequiresPermissions("marry:userRecord:remove")
    @Log(title = "用户浏览记录表", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tUserRecordService.deleteTUserRecordByIds(ids));
    }
}
