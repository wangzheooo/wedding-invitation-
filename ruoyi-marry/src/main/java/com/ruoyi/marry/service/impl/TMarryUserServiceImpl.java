package com.ruoyi.marry.service.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TMarryUserMapper;
import com.ruoyi.marry.domain.TMarryUser;
import com.ruoyi.marry.service.ITMarryUserService;
import com.ruoyi.common.core.text.Convert;

/**
 * 小程序设置Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-19
 */
@Service
public class TMarryUserServiceImpl implements ITMarryUserService {
    @Autowired
    private TMarryUserMapper tMarryUserMapper;

    @Autowired
    JdbcTemplate jdbcTemplate;

    /**
     * 查询小程序设置
     *
     * @param id 小程序设置ID
     * @return 小程序设置
     */
    @Override
    public TMarryUser selectTMarryUserById(Integer id) {
        return tMarryUserMapper.selectTMarryUserById(id);
    }

    /**
     * 查询小程序设置列表
     *
     * @param tMarryUser 小程序设置
     * @return 小程序设置
     */
    @Override
    public List<TMarryUser> selectTMarryUserList(TMarryUser tMarryUser) {
        return tMarryUserMapper.selectTMarryUserList(tMarryUser);
    }

    /**
     * 新增小程序设置
     *
     * @param tMarryUser 小程序设置
     * @return 结果
     */
    @Override
    public int insertTMarryUser(TMarryUser tMarryUser) {
        return tMarryUserMapper.insertTMarryUser(tMarryUser);
    }

    /**
     * 修改小程序设置
     *
     * @param tMarryUser 小程序设置
     * @return 结果
     */
    @Override
    public int updateTMarryUser(TMarryUser tMarryUser) {
        return tMarryUserMapper.updateTMarryUser(tMarryUser);
    }

    /**
     * 删除小程序设置对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTMarryUserByIds(String ids) {
        return tMarryUserMapper.deleteTMarryUserByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除小程序设置信息
     *
     * @param id 小程序设置ID
     * @return 结果
     */
    @Override
    public int deleteTMarryUserById(Integer id) {
        return tMarryUserMapper.deleteTMarryUserById(id);
    }

    /**
     * 清空表数据
     * */
    public int clearTable(String tableName) {
        String sql = "delete from " + tableName;
        return jdbcTemplate.update(sql);
    }
}
