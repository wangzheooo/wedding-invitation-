package com.ruoyi.marry.mapper;

import java.util.List;
import com.ruoyi.marry.domain.TUserGoldRecord;

/**
 * 礼物记录Mapper接口
 * 
 * @author user_marry
 * @date 2020-11-25
 */
public interface TUserGoldRecordMapper 
{
    /**
     * 查询礼物记录
     * 
     * @param id 礼物记录ID
     * @return 礼物记录
     */
    public TUserGoldRecord selectTUserGoldRecordById(Long id);

    /**
     * 查询礼物记录列表
     * 
     * @param tUserGoldRecord 礼物记录
     * @return 礼物记录集合
     */
    public List<TUserGoldRecord> selectTUserGoldRecordList(TUserGoldRecord tUserGoldRecord);

    /**
     * 弹幕
     */
    public List<TUserGoldRecord> getBarrage();

    /**
     * 礼物排行榜
     */
    public List<TUserGoldRecord> getLeaderboardOfGift();

    /**
     * 个人送礼物记录
     */
    public List<TUserGoldRecord> geGiftRecord(String openId);

    /**
     * 新增礼物记录
     * 
     * @param tUserGoldRecord 礼物记录
     * @return 结果
     */
    public int insertTUserGoldRecord(TUserGoldRecord tUserGoldRecord);

    /**
     * 修改礼物记录
     * 
     * @param tUserGoldRecord 礼物记录
     * @return 结果
     */
    public int updateTUserGoldRecord(TUserGoldRecord tUserGoldRecord);

    /**
     * 删除礼物记录
     * 
     * @param id 礼物记录ID
     * @return 结果
     */
    public int deleteTUserGoldRecordById(Long id);

    /**
     * 批量删除礼物记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTUserGoldRecordByIds(String[] ids);
}
