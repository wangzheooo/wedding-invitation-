package com.ruoyi.marry.controller;

import java.util.List;
import java.util.Map;

import com.sun.org.apache.xerces.internal.xs.StringList;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.marry.domain.TMarryUser;
import com.ruoyi.marry.service.ITMarryUserService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

import javax.servlet.http.HttpServletRequest;

/**
 * 小程序设置Controller
 *
 * @author user_marry
 * @date 2020-11-19
 */
@Controller
@RequestMapping("/marry/marrySetting")
public class TMarryUserController extends BaseController {
    private String prefix = "marry/marrySetting";

    @Autowired
    private ITMarryUserService tMarryUserService;

    @RequiresPermissions("marry:marrySetting:view")
    @GetMapping()
    public String marrySetting(ModelMap mmap) {
        List<TMarryUser> list = tMarryUserService.selectTMarryUserList(new TMarryUser());
        if (list.isEmpty()) {
            mmap.put("tMarryUser", new TMarryUser());
        } else {
            mmap.put("tMarryUser", list.get(0));
        }
        return prefix + "/marrySetting";
    }

    /**
     * 查询小程序设置列表
     */
    @RequiresPermissions("marry:marrySetting:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TMarryUser tMarryUser) {
        startPage();
        List<TMarryUser> list = tMarryUserService.selectTMarryUserList(tMarryUser);
        return getDataTable(list);
    }

    /**
     * 导出小程序设置列表
     */
    @RequiresPermissions("marry:marrySetting:export")
    @Log(title = "小程序设置", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TMarryUser tMarryUser) {
        List<TMarryUser> list = tMarryUserService.selectTMarryUserList(tMarryUser);
        ExcelUtil<TMarryUser> util = new ExcelUtil<TMarryUser>(TMarryUser.class);
        return util.exportExcel(list, "marrySetting");
    }

    /**
     * 新增小程序设置
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存小程序设置
     */
    @RequiresPermissions("marry:marrySetting:add")
    @Log(title = "小程序设置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TMarryUser tMarryUser) {
        return toAjax(tMarryUserService.insertTMarryUser(tMarryUser));
    }

    /**
     * 修改小程序设置
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap) {
        TMarryUser tMarryUser = tMarryUserService.selectTMarryUserById(id);
        mmap.put("tMarryUser", tMarryUser);
        return prefix + "/edit";
    }

    /**
     * 修改保存小程序设置
     */
    @RequiresPermissions("marry:marrySetting:edit")
    @Log(title = "小程序设置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TMarryUser tMarryUser) {
        List<TMarryUser> list = tMarryUserService.selectTMarryUserList(new TMarryUser());
        if (list.isEmpty()) {
            return toAjax(tMarryUserService.insertTMarryUser(tMarryUser));
        } else {
            return toAjax(tMarryUserService.updateTMarryUser(tMarryUser));
        }
    }

    /**
     * 删除小程序设置
     */
    @RequiresPermissions("marry:marrySetting:remove")
    @Log(title = "小程序设置", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tMarryUserService.deleteTMarryUserByIds(ids));
    }

    /**
     * 一键清除
     */
    @GetMapping("/clearView")
    public String clearView() {
        return prefix + "/clearSetting";
    }

    /**
     * 一键清除,执行
     */
    @PostMapping("/clearExe")
    @ResponseBody
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult clearExe(@RequestParam(value = "listData[]") List<String> listData) {
        for (String str : listData) {
            tMarryUserService.clearTable(str);
        }
        return success();
    }
}
