package com.ruoyi.marry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TUserGoldInfoMapper;
import com.ruoyi.marry.domain.TUserGoldInfo;
import com.ruoyi.marry.service.ITUserGoldInfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 礼物管理Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-25
 */
@Service
public class TUserGoldInfoServiceImpl implements ITUserGoldInfoService {
    @Autowired
    private TUserGoldInfoMapper tUserGoldInfoMapper;

    /**
     * 查询礼物管理
     *
     * @param id 礼物管理ID
     * @return 礼物管理
     */
    @Override
    public TUserGoldInfo selectTUserGoldInfoById(Long id) {
        return tUserGoldInfoMapper.selectTUserGoldInfoById(id);
    }

    /**
     * 查询礼物管理列表
     *
     * @param tUserGoldInfo 礼物管理
     * @return 礼物管理
     */
    @Override
    public List<TUserGoldInfo> selectTUserGoldInfoList(TUserGoldInfo tUserGoldInfo) {
        return tUserGoldInfoMapper.selectTUserGoldInfoList(tUserGoldInfo);
    }

    /**
     * 新增礼物管理
     *
     * @param tUserGoldInfo 礼物管理
     * @return 结果
     */
    @Override
    public int insertTUserGoldInfo(TUserGoldInfo tUserGoldInfo) {
        return tUserGoldInfoMapper.insertTUserGoldInfo(tUserGoldInfo);
    }

    /**
     * 修改礼物管理
     *
     * @param tUserGoldInfo 礼物管理
     * @return 结果
     */
    @Override
    public int updateTUserGoldInfo(TUserGoldInfo tUserGoldInfo) {
        return tUserGoldInfoMapper.updateTUserGoldInfo(tUserGoldInfo);
    }

    /**
     * 删除礼物管理对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTUserGoldInfoByIds(String ids) {
        return tUserGoldInfoMapper.deleteTUserGoldInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除礼物管理信息
     *
     * @param id 礼物管理ID
     * @return 结果
     */
    @Override
    public int deleteTUserGoldInfoById(Long id) {
        return tUserGoldInfoMapper.deleteTUserGoldInfoById(id);
    }
}
