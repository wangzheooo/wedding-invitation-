package com.ruoyi.marry.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TUserMapper;
import com.ruoyi.marry.domain.TUser;
import com.ruoyi.marry.service.ITUserService;
import com.ruoyi.common.core.text.Convert;

/**
 * 用户管理Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-23
 */
@Service
public class TUserServiceImpl implements ITUserService {
    @Autowired
    private TUserMapper tUserMapper;

    /**
     * 查询用户管理
     *
     * @param id 用户管理ID
     * @return 用户管理
     */
    @Override
    public TUser selectTUserById(Long id) {
        return tUserMapper.selectTUserById(id);
    }

    /**
     * 查询用户管理byOpenId
     *
     * @param openId 用户openId
     * @return 用户管理
     */
    public TUser selectTUserByOpenId(String openId) {
        return tUserMapper.selectTUserByOpenId(openId);
    }

    /**
     * 查询用户管理列表
     *
     * @param tUser 用户管理
     * @return 用户管理
     */
    @Override
    public List<TUser> selectTUserList(TUser tUser) {
        return tUserMapper.selectTUserList(tUser);
    }

    /**
     * 新增用户管理
     *
     * @param tUser 用户管理
     * @return 结果
     */
    @Override
    public int insertTUser(TUser tUser) {
        tUser.setCreateTime(DateUtils.getNowDate());
        return tUserMapper.insertTUser(tUser);
    }

    /**
     * 修改用户管理
     *
     * @param tUser 用户管理
     * @return 结果
     */
    @Override
    public int updateTUser(TUser tUser) {
        tUser.setUpdateTime(DateUtils.getNowDate());
        return tUserMapper.updateTUser(tUser);
    }

    /**
     * 删除用户管理对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTUserByIds(String ids) {
        return tUserMapper.deleteTUserByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户管理信息
     *
     * @param id 用户管理ID
     * @return 结果
     */
    @Override
    public int deleteTUserById(Long id) {
        return tUserMapper.deleteTUserById(id);
    }
}
