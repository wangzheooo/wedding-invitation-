package com.ruoyi.marry.mapper;

import java.util.List;

import com.ruoyi.marry.domain.TUser;

/**
 * 用户管理Mapper接口
 *
 * @author user_marry
 * @date 2020-11-23
 */
public interface TUserMapper {
    /**
     * 查询用户管理
     *
     * @param id 用户管理ID
     * @return 用户管理
     */
    public TUser selectTUserById(Long id);

    /**
     * 查询用户管理byOpenId
     *
     * @param openId 用户openId
     * @return 用户管理
     */
    public TUser selectTUserByOpenId(String openId);

    /**
     * 查询用户管理列表
     *
     * @param tUser 用户管理
     * @return 用户管理集合
     */
    public List<TUser> selectTUserList(TUser tUser);

    /**
     * 新增用户管理
     *
     * @param tUser 用户管理
     * @return 结果
     */
    public int insertTUser(TUser tUser);

    /**
     * 修改用户管理
     *
     * @param tUser 用户管理
     * @return 结果
     */
    public int updateTUser(TUser tUser);

    /**
     * 删除用户管理
     *
     * @param id 用户管理ID
     * @return 结果
     */
    public int deleteTUserById(Long id);

    /**
     * 批量删除用户管理
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTUserByIds(String[] ids);
}
