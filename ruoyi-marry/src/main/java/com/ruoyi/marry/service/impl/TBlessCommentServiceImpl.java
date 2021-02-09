package com.ruoyi.marry.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TBlessCommentMapper;
import com.ruoyi.marry.domain.TBlessComment;
import com.ruoyi.marry.service.ITBlessCommentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 留言管理Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-24
 */
@Service
public class TBlessCommentServiceImpl implements ITBlessCommentService {
    @Autowired
    private TBlessCommentMapper tBlessCommentMapper;

    /**
     * 查询留言管理
     *
     * @param id 留言管理ID
     * @return 留言管理
     */
    @Override
    public TBlessComment selectTBlessCommentById(Integer id) {
        return tBlessCommentMapper.selectTBlessCommentById(id);
    }

    /**
     * 查询留言管理列表
     *
     * @param tBlessComment 留言管理
     * @return 留言管理
     */
    @Override
    public List<TBlessComment> selectTBlessCommentList(TBlessComment tBlessComment) {
        return tBlessCommentMapper.selectTBlessCommentList(tBlessComment);
    }

    /**
     * 查询留言管理列表
     * @return 留言管理集合
     */
    public List<TBlessComment> selectTBlessComments(){
        return tBlessCommentMapper.selectTBlessComments();
    }

    /**
     * 新增留言管理
     *
     * @param tBlessComment 留言管理
     * @return 结果
     */
    @Override
    public int insertTBlessComment(TBlessComment tBlessComment) {
        tBlessComment.setCreateTime(DateUtils.getNowDate());
        return tBlessCommentMapper.insertTBlessComment(tBlessComment);
    }

    /**
     * 修改留言管理
     *
     * @param tBlessComment 留言管理
     * @return 结果
     */
    @Override
    public int updateTBlessComment(TBlessComment tBlessComment) {
        return tBlessCommentMapper.updateTBlessComment(tBlessComment);
    }

    /**
     * 删除留言管理对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTBlessCommentByIds(String ids) {
        return tBlessCommentMapper.deleteTBlessCommentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除留言管理信息
     *
     * @param id 留言管理ID
     * @return 结果
     */
    @Override
    public int deleteTBlessCommentById(Integer id) {
        return tBlessCommentMapper.deleteTBlessCommentById(id);
    }
}
