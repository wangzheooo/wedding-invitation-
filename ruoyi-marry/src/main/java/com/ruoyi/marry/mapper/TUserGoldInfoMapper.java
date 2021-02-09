package com.ruoyi.marry.mapper;

import java.util.List;
import com.ruoyi.marry.domain.TUserGoldInfo;

/**
 * 礼物管理Mapper接口
 * 
 * @author user_marry
 * @date 2020-11-25
 */
public interface TUserGoldInfoMapper 
{
    /**
     * 查询礼物管理
     * 
     * @param id 礼物管理ID
     * @return 礼物管理
     */
    public TUserGoldInfo selectTUserGoldInfoById(Long id);

    /**
     * 查询礼物管理列表
     * 
     * @param tUserGoldInfo 礼物管理
     * @return 礼物管理集合
     */
    public List<TUserGoldInfo> selectTUserGoldInfoList(TUserGoldInfo tUserGoldInfo);

    /**
     * 新增礼物管理
     * 
     * @param tUserGoldInfo 礼物管理
     * @return 结果
     */
    public int insertTUserGoldInfo(TUserGoldInfo tUserGoldInfo);

    /**
     * 修改礼物管理
     * 
     * @param tUserGoldInfo 礼物管理
     * @return 结果
     */
    public int updateTUserGoldInfo(TUserGoldInfo tUserGoldInfo);

    /**
     * 删除礼物管理
     * 
     * @param id 礼物管理ID
     * @return 结果
     */
    public int deleteTUserGoldInfoById(Long id);

    /**
     * 批量删除礼物管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTUserGoldInfoByIds(String[] ids);
}
