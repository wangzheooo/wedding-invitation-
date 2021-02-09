package com.ruoyi.marry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TUserGoldMapper;
import com.ruoyi.marry.domain.TUserGold;
import com.ruoyi.marry.service.ITUserGoldService;
import com.ruoyi.common.core.text.Convert;

/**
 * 用户金币管理Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-25
 */
@Service
public class TUserGoldServiceImpl implements ITUserGoldService {
    @Autowired
    private TUserGoldMapper tUserGoldMapper;

    /**
     * 查询用户金币管理
     *
     * @param id 用户金币管理ID
     * @return 用户金币管理
     */
    @Override
    public TUserGold selectTUserGoldById(Long id) {
        return tUserGoldMapper.selectTUserGoldById(id);
    }

    /**
     * 查询用户金币管理
     *
     * @param openid 用户ID
     * @return 用户金币管理
     */
    public TUserGold selectTUserGoldByOpenId(String openid) {
        return tUserGoldMapper.selectTUserGoldByOpenId(openid);
    }

    /**
     * 金币排行榜
     */
    public List<TUserGold> getLeaderboardOfGold(){
        return tUserGoldMapper.getLeaderboardOfGold();
    }

    /**
     * 查询用户金币管理列表
     *
     * @param tUserGold 用户金币管理
     * @return 用户金币管理
     */
    @Override
    public List<TUserGold> selectTUserGoldList(TUserGold tUserGold) {
        return tUserGoldMapper.selectTUserGoldList(tUserGold);
    }

    /**
     * 新增用户金币管理
     *
     * @param tUserGold 用户金币管理
     * @return 结果
     */
    @Override
    public int insertTUserGold(TUserGold tUserGold) {
        return tUserGoldMapper.insertTUserGold(tUserGold);
    }

    /**
     * 修改用户金币管理
     *
     * @param tUserGold 用户金币管理
     * @return 结果
     */
    @Override
    public int updateTUserGold(TUserGold tUserGold) {
        return tUserGoldMapper.updateTUserGold(tUserGold);
    }

    /**
     * 删除用户金币管理对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTUserGoldByIds(String ids) {
        return tUserGoldMapper.deleteTUserGoldByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户金币管理信息
     *
     * @param id 用户金币管理ID
     * @return 结果
     */
    @Override
    public int deleteTUserGoldById(Long id) {
        return tUserGoldMapper.deleteTUserGoldById(id);
    }
}
