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
import com.ruoyi.marry.domain.TUser;
import com.ruoyi.marry.service.ITUserService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户管理Controller
 *
 * @author user_marry
 * @date 2020-11-23
 */
@Controller
@RequestMapping("/marry/tuser")
public class TUserController extends BaseController {
    private String prefix = "marry/tuser";

    @Autowired
    private ITUserService tUserService;

    @RequiresPermissions("marry:tuser:view")
    @GetMapping()
    public String tuser() {
        return prefix + "/tuser";
    }

    /**
     * 查询用户管理列表
     */
    @RequiresPermissions("marry:tuser:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TUser tUser) {
        startPage();
        List<TUser> list = tUserService.selectTUserList(tUser);
        return getDataTable(list);
    }

    /**
     * 导出用户管理列表
     */
    @RequiresPermissions("marry:tuser:export")
    @Log(title = "用户管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TUser tUser) {
        List<TUser> list = tUserService.selectTUserList(tUser);
        ExcelUtil<TUser> util = new ExcelUtil<TUser>(TUser.class);
        return util.exportExcel(list, "tuser");
    }

    /**
     * 新增用户管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存用户管理
     */
    @RequiresPermissions("marry:tuser:add")
    @Log(title = "用户管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TUser tUser) {
        return toAjax(tUserService.insertTUser(tUser));
    }

    /**
     * 修改用户管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        TUser tUser = tUserService.selectTUserById(id);
        mmap.put("tUser", tUser);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户管理
     */
    @RequiresPermissions("marry:tuser:edit")
    @Log(title = "用户管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TUser tUser) {
        return toAjax(tUserService.updateTUser(tUser));
    }

    /**
     * 删除用户管理
     */
    @RequiresPermissions("marry:tuser:remove")
    @Log(title = "用户管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tUserService.deleteTUserByIds(ids));
    }
}
