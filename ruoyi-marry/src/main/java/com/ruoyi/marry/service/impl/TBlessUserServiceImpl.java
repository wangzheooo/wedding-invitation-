package com.ruoyi.marry.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TBlessUserMapper;
import com.ruoyi.marry.domain.TBlessUser;
import com.ruoyi.marry.service.ITBlessUserService;
import com.ruoyi.common.core.text.Convert;

/**
 * 点赞管理Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-24
 */
@Service
public class TBlessUserServiceImpl implements ITBlessUserService {
    @Autowired
    private TBlessUserMapper tBlessUserMapper;

    /**
     * 查询点赞管理
     *
     * @param id 点赞管理ID
     * @return 点赞管理
     */
    @Override
    public TBlessUser selectTBlessUserById(Integer id) {
        return tBlessUserMapper.selectTBlessUserById(id);
    }

    /**
     * 查询点赞管理列表
     *
     * @param tBlessUser 点赞管理
     * @return 点赞管理
     */
    @Override
    public List<TBlessUser> selectTBlessUserList(TBlessUser tBlessUser) {
        return tBlessUserMapper.selectTBlessUserList(tBlessUser);
    }

    /**
     * 查询点赞管理列表
     *
     * @return 点赞管理集合
     */
    public List<TBlessUser> selectTBlessUserListAll() {
        return tBlessUserMapper.selectTBlessUserListAll();
    }

    /**
     * 新增点赞管理
     *
     * @param tBlessUser 点赞管理
     * @return 结果
     */
    @Override
    public int insertTBlessUser(TBlessUser tBlessUser) {
        tBlessUser.setCreateTime(DateUtils.getNowDate());
        return tBlessUserMapper.insertTBlessUser(tBlessUser);
    }

    /**
     * 修改点赞管理
     *
     * @param tBlessUser 点赞管理
     * @return 结果
     */
    @Override
    public int updateTBlessUser(TBlessUser tBlessUser) {
        return tBlessUserMapper.updateTBlessUser(tBlessUser);
    }

    /**
     * 删除点赞管理对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTBlessUserByIds(String ids) {
        return tBlessUserMapper.deleteTBlessUserByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除点赞管理信息
     *
     * @param id 点赞管理ID
     * @return 结果
     */
    @Override
    public int deleteTBlessUserById(Integer id) {
        return tBlessUserMapper.deleteTBlessUserById(id);
    }
}
