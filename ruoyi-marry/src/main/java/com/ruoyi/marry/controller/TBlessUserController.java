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
import com.ruoyi.marry.domain.TBlessUser;
import com.ruoyi.marry.service.ITBlessUserService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 点赞管理Controller
 *
 * @author user_marry
 * @date 2020-11-24
 */
@Controller
@RequestMapping("/marry/bless")
public class TBlessUserController extends BaseController {
    private String prefix = "marry/bless";

    @Autowired
    private ITBlessUserService tBlessUserService;

    @RequiresPermissions("marry:bless:view")
    @GetMapping()
    public String bless() {
        return prefix + "/bless";
    }

    /**
     * 查询点赞管理列表
     */
    @RequiresPermissions("marry:bless:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TBlessUser tBlessUser) {
        startPage();
//        List<TBlessUser> list = tBlessUserService.selectTBlessUserList(tBlessUser);
        List<TBlessUser> list = tBlessUserService.selectTBlessUserListAll();
        return getDataTable(list);
    }

    /**
     * 导出点赞管理列表
     */
    @RequiresPermissions("marry:bless:export")
    @Log(title = "点赞管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TBlessUser tBlessUser) {
        List<TBlessUser> list = tBlessUserService.selectTBlessUserList(tBlessUser);
        ExcelUtil<TBlessUser> util = new ExcelUtil<TBlessUser>(TBlessUser.class);
        return util.exportExcel(list, "bless");
    }

    /**
     * 新增点赞管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存点赞管理
     */
    @RequiresPermissions("marry:bless:add")
    @Log(title = "点赞管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TBlessUser tBlessUser) {
        return toAjax(tBlessUserService.insertTBlessUser(tBlessUser));
    }

    /**
     * 修改点赞管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap) {
        TBlessUser tBlessUser = tBlessUserService.selectTBlessUserById(id);
        mmap.put("tBlessUser", tBlessUser);
        return prefix + "/edit";
    }

    /**
     * 修改保存点赞管理
     */
    @RequiresPermissions("marry:bless:edit")
    @Log(title = "点赞管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TBlessUser tBlessUser) {
        return toAjax(tBlessUserService.updateTBlessUser(tBlessUser));
    }

    /**
     * 删除点赞管理
     */
    @RequiresPermissions("marry:bless:remove")
    @Log(title = "点赞管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tBlessUserService.deleteTBlessUserByIds(ids));
    }
}
