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
import com.ruoyi.marry.domain.TUserGoldInfo;
import com.ruoyi.marry.service.ITUserGoldInfoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 礼物管理Controller
 *
 * @author user_marry
 * @date 2020-11-25
 */
@Controller
@RequestMapping("/marry/goldInfo")
public class TUserGoldInfoController extends BaseController {
    private String prefix = "marry/goldInfo";

    @Autowired
    private ITUserGoldInfoService tUserGoldInfoService;

    @RequiresPermissions("marry:goldInfo:view")
    @GetMapping()
    public String goldInfo() {
        return prefix + "/goldInfo";
    }

    /**
     * 查询礼物管理列表
     */
    @RequiresPermissions("marry:goldInfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TUserGoldInfo tUserGoldInfo) {
        startPage();
        List<TUserGoldInfo> list = tUserGoldInfoService.selectTUserGoldInfoList(tUserGoldInfo);
        return getDataTable(list);
    }

    /**
     * 导出礼物管理列表
     */
    @RequiresPermissions("marry:goldInfo:export")
    @Log(title = "礼物管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TUserGoldInfo tUserGoldInfo) {
        List<TUserGoldInfo> list = tUserGoldInfoService.selectTUserGoldInfoList(tUserGoldInfo);
        ExcelUtil<TUserGoldInfo> util = new ExcelUtil<TUserGoldInfo>(TUserGoldInfo.class);
        return util.exportExcel(list, "goldInfo");
    }

    /**
     * 新增礼物管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存礼物管理
     */
    @RequiresPermissions("marry:goldInfo:add")
    @Log(title = "礼物管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TUserGoldInfo tUserGoldInfo) {
        return toAjax(tUserGoldInfoService.insertTUserGoldInfo(tUserGoldInfo));
    }

    /**
     * 修改礼物管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        TUserGoldInfo tUserGoldInfo = tUserGoldInfoService.selectTUserGoldInfoById(id);
        mmap.put("tUserGoldInfo", tUserGoldInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存礼物管理
     */
    @RequiresPermissions("marry:goldInfo:edit")
    @Log(title = "礼物管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TUserGoldInfo tUserGoldInfo) {
        return toAjax(tUserGoldInfoService.updateTUserGoldInfo(tUserGoldInfo));
    }

    /**
     * 删除礼物管理
     */
    @RequiresPermissions("marry:goldInfo:remove")
    @Log(title = "礼物管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tUserGoldInfoService.deleteTUserGoldInfoByIds(ids));
    }
}
