package com.ruoyi.marry.service;

import java.util.List;

import com.ruoyi.marry.domain.TBlessUser;

/**
 * 点赞管理Service接口
 *
 * @author user_marry
 * @date 2020-11-24
 */
public interface ITBlessUserService {
    /**
     * 查询点赞管理
     *
     * @param id 点赞管理ID
     * @return 点赞管理
     */
    public TBlessUser selectTBlessUserById(Integer id);

    /**
     * 查询点赞管理列表
     *
     * @param tBlessUser 点赞管理
     * @return 点赞管理集合
     */
    public List<TBlessUser> selectTBlessUserList(TBlessUser tBlessUser);

    /**
     * 查询点赞管理列表
     *
     * @return 点赞管理集合
     */
    public List<TBlessUser> selectTBlessUserListAll();

    /**
     * 新增点赞管理
     *
     * @param tBlessUser 点赞管理
     * @return 结果
     */
    public int insertTBlessUser(TBlessUser tBlessUser);

    /**
     * 修改点赞管理
     *
     * @param tBlessUser 点赞管理
     * @return 结果
     */
    public int updateTBlessUser(TBlessUser tBlessUser);

    /**
     * 批量删除点赞管理
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTBlessUserByIds(String ids);

    /**
     * 删除点赞管理信息
     *
     * @param id 点赞管理ID
     * @return 结果
     */
    public int deleteTBlessUserById(Integer id);
}
