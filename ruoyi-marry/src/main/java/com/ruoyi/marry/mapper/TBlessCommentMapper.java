package com.ruoyi.marry.mapper;

import java.util.List;
import com.ruoyi.marry.domain.TBlessComment;

/**
 * 留言管理Mapper接口
 * 
 * @author user_marry
 * @date 2020-11-24
 */
public interface TBlessCommentMapper 
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
     * 删除留言管理
     * 
     * @param id 留言管理ID
     * @return 结果
     */
    public int deleteTBlessCommentById(Integer id);

    /**
     * 批量删除留言管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTBlessCommentByIds(String[] ids);
}
