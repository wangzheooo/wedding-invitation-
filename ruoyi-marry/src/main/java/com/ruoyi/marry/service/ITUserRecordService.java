package com.ruoyi.marry.service;

import java.util.List;
import com.ruoyi.marry.domain.TUserRecord;

/**
 * 用户浏览记录表Service接口
 * 
 * @author user_marry
 * @date 2020-11-23
 */
public interface ITUserRecordService 
{
    /**
     * 查询用户浏览记录表
     * 
     * @param id 用户浏览记录表ID
     * @return 用户浏览记录表
     */
    public TUserRecord selectTUserRecordById(Long id);

    /**
     * 查询用户浏览记录表列表
     * 
     * @param tUserRecord 用户浏览记录表
     * @return 用户浏览记录表集合
     */
    public List<TUserRecord> selectTUserRecordList(TUserRecord tUserRecord);

    /**
     * 新增用户浏览记录表
     * 
     * @param tUserRecord 用户浏览记录表
     * @return 结果
     */
    public int insertTUserRecord(TUserRecord tUserRecord);

    /**
     * 修改用户浏览记录表
     * 
     * @param tUserRecord 用户浏览记录表
     * @return 结果
     */
    public int updateTUserRecord(TUserRecord tUserRecord);

    /**
     * 批量删除用户浏览记录表
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTUserRecordByIds(String ids);

    /**
     * 删除用户浏览记录表信息
     * 
     * @param id 用户浏览记录表ID
     * @return 结果
     */
    public int deleteTUserRecordById(Long id);
}
