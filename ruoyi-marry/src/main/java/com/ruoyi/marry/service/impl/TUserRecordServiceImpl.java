package com.ruoyi.marry.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TUserRecordMapper;
import com.ruoyi.marry.domain.TUserRecord;
import com.ruoyi.marry.service.ITUserRecordService;
import com.ruoyi.common.core.text.Convert;

/**
 * 用户浏览记录表Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-23
 */
@Service
public class TUserRecordServiceImpl implements ITUserRecordService {
    @Autowired
    private TUserRecordMapper tUserRecordMapper;

    /**
     * 查询用户浏览记录表
     *
     * @param id 用户浏览记录表ID
     * @return 用户浏览记录表
     */
    @Override
    public TUserRecord selectTUserRecordById(Long id) {
        return tUserRecordMapper.selectTUserRecordById(id);
    }

    /**
     * 查询用户浏览记录表列表
     *
     * @param tUserRecord 用户浏览记录表
     * @return 用户浏览记录表
     */
    @Override
    public List<TUserRecord> selectTUserRecordList(TUserRecord tUserRecord) {
        return tUserRecordMapper.selectTUserRecordList(tUserRecord);
    }

    /**
     * 新增用户浏览记录表
     *
     * @param tUserRecord 用户浏览记录表
     * @return 结果
     */
    @Override
    public int insertTUserRecord(TUserRecord tUserRecord) {
        tUserRecord.setCreateTime(DateUtils.getNowDate());
        return tUserRecordMapper.insertTUserRecord(tUserRecord);
    }

    /**
     * 修改用户浏览记录表
     *
     * @param tUserRecord 用户浏览记录表
     * @return 结果
     */
    @Override
    public int updateTUserRecord(TUserRecord tUserRecord) {
        tUserRecord.setUpdateTime(DateUtils.getNowDate());
        return tUserRecordMapper.updateTUserRecord(tUserRecord);
    }

    /**
     * 删除用户浏览记录表对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTUserRecordByIds(String ids) {
        return tUserRecordMapper.deleteTUserRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户浏览记录表信息
     *
     * @param id 用户浏览记录表ID
     * @return 结果
     */
    @Override
    public int deleteTUserRecordById(Long id) {
        return tUserRecordMapper.deleteTUserRecordById(id);
    }
}
