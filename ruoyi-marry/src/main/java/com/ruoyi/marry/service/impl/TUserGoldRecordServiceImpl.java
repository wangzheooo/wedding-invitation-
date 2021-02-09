package com.ruoyi.marry.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TUserGoldRecordMapper;
import com.ruoyi.marry.domain.TUserGoldRecord;
import com.ruoyi.marry.service.ITUserGoldRecordService;
import com.ruoyi.common.core.text.Convert;

/**
 * 礼物记录Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-25
 */
@Service
public class TUserGoldRecordServiceImpl implements ITUserGoldRecordService {
    @Autowired
    private TUserGoldRecordMapper tUserGoldRecordMapper;

    /**
     * 查询礼物记录
     *
     * @param id 礼物记录ID
     * @return 礼物记录
     */
    @Override
    public TUserGoldRecord selectTUserGoldRecordById(Long id) {
        return tUserGoldRecordMapper.selectTUserGoldRecordById(id);
    }

    /**
     * 查询礼物记录列表
     *
     * @param tUserGoldRecord 礼物记录
     * @return 礼物记录
     */
    @Override
    public List<TUserGoldRecord> selectTUserGoldRecordList(TUserGoldRecord tUserGoldRecord) {
        return tUserGoldRecordMapper.selectTUserGoldRecordList(tUserGoldRecord);
    }

    /**
     * 礼物排行榜
     */
    public List<TUserGoldRecord> getLeaderboardOfGift() {
        return tUserGoldRecordMapper.getLeaderboardOfGift();
    }

    /**
     * 个人送礼物记录
     */
    public List<TUserGoldRecord> geGiftRecord(String openId) {
        return tUserGoldRecordMapper.geGiftRecord(openId);
    }

    /**
     * 弹幕
     */
    public List<TUserGoldRecord> getBarrage() {
        return tUserGoldRecordMapper.getBarrage();
    }

    /**
     * 新增礼物记录
     *
     * @param tUserGoldRecord 礼物记录
     * @return 结果
     */
    @Override
    public int insertTUserGoldRecord(TUserGoldRecord tUserGoldRecord) {
        tUserGoldRecord.setCreateTime(DateUtils.getNowDate());
        return tUserGoldRecordMapper.insertTUserGoldRecord(tUserGoldRecord);
    }

    /**
     * 修改礼物记录
     *
     * @param tUserGoldRecord 礼物记录
     * @return 结果
     */
    @Override
    public int updateTUserGoldRecord(TUserGoldRecord tUserGoldRecord) {
        return tUserGoldRecordMapper.updateTUserGoldRecord(tUserGoldRecord);
    }

    /**
     * 删除礼物记录对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTUserGoldRecordByIds(String ids) {
        return tUserGoldRecordMapper.deleteTUserGoldRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除礼物记录信息
     *
     * @param id 礼物记录ID
     * @return 结果
     */
    @Override
    public int deleteTUserGoldRecordById(Long id) {
        return tUserGoldRecordMapper.deleteTUserGoldRecordById(id);
    }
}
