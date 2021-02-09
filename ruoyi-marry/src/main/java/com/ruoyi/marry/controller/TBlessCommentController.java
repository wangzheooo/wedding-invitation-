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
import com.ruoyi.marry.domain.TBlessComment;
import com.ruoyi.marry.service.ITBlessCommentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 留言管理Controller
 *
 * @author user_marry
 * @date 2020-11-24
 */
@Controller
@RequestMapping("/marry/comment")
public class TBlessCommentController extends BaseController {
    private String prefix = "marry/comment";

    @Autowired
    private ITBlessCommentService tBlessCommentService;

    @RequiresPermissions("marry:comment:view")
    @GetMapping()
    public String comment() {
        return prefix + "/comment";
    }

    /**
     * 查询留言管理列表
     */
    @RequiresPermissions("marry:comment:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TBlessComment tBlessComment) {
        startPage();
        List<TBlessComment> list = tBlessCommentService.selectTBlessCommentList(tBlessComment);
        return getDataTable(list);
    }

    /**
     * 导出留言管理列表
     */
    @RequiresPermissions("marry:comment:export")
    @Log(title = "留言管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TBlessComment tBlessComment) {
        List<TBlessComment> list = tBlessCommentService.selectTBlessCommentList(tBlessComment);
        ExcelUtil<TBlessComment> util = new ExcelUtil<TBlessComment>(TBlessComment.class);
        return util.exportExcel(list, "comment");
    }

    /**
     * 新增留言管理
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存留言管理
     */
    @RequiresPermissions("marry:comment:add")
    @Log(title = "留言管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TBlessComment tBlessComment) {
        return toAjax(tBlessCommentService.insertTBlessComment(tBlessComment));
    }

    /**
     * 修改留言管理
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap) {
        TBlessComment tBlessComment = tBlessCommentService.selectTBlessCommentById(id);
        mmap.put("tBlessComment", tBlessComment);
        return prefix + "/edit";
    }

    /**
     * 修改保存留言管理
     */
    @RequiresPermissions("marry:comment:edit")
    @Log(title = "留言管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TBlessComment tBlessComment) {
        return toAjax(tBlessCommentService.updateTBlessComment(tBlessComment));
    }

    /**
     * 删除留言管理
     */
    @RequiresPermissions("marry:comment:remove")
    @Log(title = "留言管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(tBlessCommentService.deleteTBlessCommentByIds(ids));
    }
}
