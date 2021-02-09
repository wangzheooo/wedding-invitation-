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
import com.ruoyi.marry.domain.TUserGoldRecord;
import com.ruoyi.marry.service.ITUserGoldRecordService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 礼物记录Controller
 *
 * @author user_marry
 * @date 2020-11-25
 */
@Controller
@RequestMapping("/marry/giftRecord")
public class TUserGoldRecordController extends BaseController {
    private String prefix = "marry/giftRecord";

    @Autowired
    private ITUserGoldRecordService tUserGoldRecordService;

    @RequiresPermissions("marry:giftRecord:view")
    @GetMapping()
    public String giftRecord() {
        return prefix + "/giftRecord";
    }

    /**
     * 查询礼物记录列表
     */
    @RequiresPermissions("marry:giftRecord:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TUserGoldRecord tUserGoldRecord) {
        startPage();
//        List<TUserGoldRecord> list = tUserGoldRecordService.selectTUserGoldRecordList(tUserGoldRecord);
        List<TUserGoldRecord> list = tUserGoldRecordService.getBarrage();
        return getDataTable(list);
    }

    /**
     * 导出礼物记录列表
     */
    @RequiresPermissions("marry:giftRecord:export")
    @Log(title = "礼物记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TUserGoldRecord tUserGoldRecord) {
        List<TUserGoldRecord> list = tUserGoldRecordService.selectTUserGoldRecordList(tUserGoldRecord);
        ExcelUtil<TUserGoldRecord> util = new ExcelUtil<TUserGoldRecord>(TUserGoldRecord.class);
        return util.exportExcel(list, "giftRecord");
    }

    /**
     * 新增礼物记录
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存礼物记录
     */
    @RequiresPermissions("marry:giftRecord:add")
    @Log(title = "礼物记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TUserGoldRecord tUserGoldRecord) {
        return toAjax(tUserGoldRecordService.insertTUserGoldRecord(tUserGoldRecord));
    }

    /**
     * 修改礼物记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        TUserGoldRecord tUserGoldRecord = tUserGoldRecordService.selectTUserGoldRecordById(id);
        mmap.put("tUserGoldRecord", tUserGoldRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存礼物记录
     */
    @RequiresPermissions("marry:giftRecord:edit")
    @Log(title = "礼物记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TUserGoldRecord tUserGoldRecord) {
        return toAjax(tUserGoldRecordService.updateTUserGoldRecord(tUserGoldRecord));
    }

    /**
     * 删除礼物记录
     */
    @RequiresPermissions("marry:giftRecord:remove")
    @Log(title = "礼物记录", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tUserGoldRecordService.deleteTUserGoldRecordByIds(ids));
    }
}
