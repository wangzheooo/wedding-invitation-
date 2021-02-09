package com.ruoyi.marry.service;

import java.util.List;

import com.ruoyi.marry.domain.TUserGold;

/**
 * 用户金币管理Service接口
 *
 * @author user_marry
 * @date 2020-11-25
 */
public interface ITUserGoldService {
    /**
     * 查询用户金币管理
     *
     * @param id 用户金币管理ID
     * @return 用户金币管理
     */
    public TUserGold selectTUserGoldById(Long id);

    /**
     * 查询用户金币管理
     *
     * @param openid 用户ID
     * @return 用户金币管理
     */
    public TUserGold selectTUserGoldByOpenId(String openid);

    /**
     * 查询用户金币管理列表
     *
     * @param tUserGold 用户金币管理
     * @return 用户金币管理集合
     */
    public List<TUserGold> selectTUserGoldList(TUserGold tUserGold);

    /**
     * 新增用户金币管理
     *
     * @param tUserGold 用户金币管理
     * @return 结果
     */
    public int insertTUserGold(TUserGold tUserGold);

    /**
     * 修改用户金币管理
     *
     * @param tUserGold 用户金币管理
     * @return 结果
     */
    public int updateTUserGold(TUserGold tUserGold);

    /**
     * 批量删除用户金币管理
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTUserGoldByIds(String ids);

    /**
     * 删除用户金币管理信息
     *
     * @param id 用户金币管理ID
     * @return 结果
     */
    public int deleteTUserGoldById(Long id);

    /**
     * 金币排行榜
     */
    public List<TUserGold> getLeaderboardOfGold();
}
