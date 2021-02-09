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
import com.ruoyi.marry.domain.TUserGold;
import com.ruoyi.marry.service.ITUserGoldService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户金币管理Controller
 *
 * @author user_marry
 * @date 2020-11-25
 */
@Controller
@RequestMapping("/marry/gold")
public class TUserGoldController extends BaseController {
    private String prefix = "marry/gold";

    @Autowired
    private ITUserGoldService tUserGoldService;

    @RequiresPermissions("marry:gold:view")
    @GetMapping()
    public String gold() {
        return prefix + "/gold";
    }

    /**
     * 查询用户金币管理列表
     */
    @RequiresPermissions("marry:gold:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TUserGold tUserGold) {
        startPage();
//        List<TUserGold> list = tUserGoldService.selectTUserGoldList(tUserGold);
        List<TUserGold> list = tUserGoldService.getLeaderboardOfGold();
        return getDataTable(list);
    }

    /**
     * 导出用户金币管理列表
     */
    @RequiresPermissions("marry:gold:export")
    @Log(title = "用户金币管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TUserGold tUserGold) {
        List<TUserGold> list = tUserGoldService.selectTUserGoldList(tUserGold);
        ExcelUtil<TUserGold> util = new ExcelUtil<TUserGold>(TUserGold.class);
        return util.exportExcel(list, "gold");
    }

    /**
     * 新增用户金币管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存用户金币管理
     */
    @RequiresPermissions("marry:gold:add")
    @Log(title = "用户金币管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TUserGold tUserGold) {
        return toAjax(tUserGoldService.insertTUserGold(tUserGold));
    }

    /**
     * 修改用户金币管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        TUserGold tUserGold = tUserGoldService.selectTUserGoldById(id);
        mmap.put("tUserGold", tUserGold);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户金币管理
     */
    @RequiresPermissions("marry:gold:edit")
    @Log(title = "用户金币管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TUserGold tUserGold) {
        return toAjax(tUserGoldService.updateTUserGold(tUserGold));
    }

    /**
     * 删除用户金币管理
     */
    @RequiresPermissions("marry:gold:remove")
    @Log(title = "用户金币管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tUserGoldService.deleteTUserGoldByIds(ids));
    }
}
