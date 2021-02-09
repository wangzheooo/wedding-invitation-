package com.ruoyi.marry.service;

import java.util.List;
import com.ruoyi.marry.domain.TBlessComment;

/**
 * 留言管理Service接口
 * 
 * @author user_marry
 * @date 2020-11-24
 */
public interface ITBlessCommentService 
{
    /**
     * 查询留言管理
     * 
     * @param id 留言管理ID
     * @return 留言管理
     */
    public TBlessComment selectTBlessCommentById(Integer id);

    /**
     * 查询留言管理列表
     * 
     * @param tBlessComment 留言管理
     * @return 留言管理集合
     */
    public List<TBlessComment> selectTBlessCommentList(TBlessComment tBlessComment);

    /**
     * 查询留言管理列表
     * @return 留言管理集合
     */
    public List<TBlessComment> selectTBlessComments();

    /**
     * 新增留言管理
     * 
     * @param tBlessComment 留言管理
     * @return 结果
     */
    public int insertTBlessComment(TBlessComment tBlessComment);

    /**
     * 修改留言管理
     * 
     * @param tBlessComment 留言管理
     * @return 结果
     */
    public int updateTBlessComment(TBlessComment tBlessComment);

    /**
     * 批量删除留言管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTBlessCommentByIds(String ids);

    /**
     * 删除留言管理信息
     * 
     * @param id 留言管理ID
     * @return 结果
     */
    public int deleteTBlessCommentById(Integer id);
}
