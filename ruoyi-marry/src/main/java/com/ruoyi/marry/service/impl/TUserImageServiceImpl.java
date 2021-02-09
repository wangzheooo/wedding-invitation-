package com.ruoyi.marry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.marry.mapper.TUserImageMapper;
import com.ruoyi.marry.domain.TUserImage;
import com.ruoyi.marry.service.ITUserImageService;
import com.ruoyi.common.core.text.Convert;

/**
 * 婚纱照Service业务层处理
 *
 * @author user_marry
 * @date 2020-11-19
 */
@Service
public class TUserImageServiceImpl implements ITUserImageService {
    @Autowired
    private TUserImageMapper tUserImageMapper;

    /**
     * 查询婚纱照
     *
     * @param id 婚纱照ID
     * @return 婚纱照
     */
    @Override
    public TUserImage selectTUserImageById(String id) {
        return tUserImageMapper.selectTUserImageById(id);
    }

    /**
     * 查询婚纱照列表
     *
     * @param tUserImage 婚纱照
     * @return 婚纱照
     */
    @Override
    public List<TUserImage> selectTUserImageList(TUserImage tUserImage) {
        return tUserImageMapper.selectTUserImageList(tUserImage);
    }

    /**
     * 新增婚纱照
     *
     * @param tUserImage 婚纱照
     * @return 结果
     */
    @Override
    public int insertTUserImage(TUserImage tUserImage) {
        return tUserImageMapper.insertTUserImage(tUserImage);
    }

    /**
     * 修改婚纱照
     *
     * @param tUserImage 婚纱照
     * @return 结果
     */
    @Override
    public int updateTUserImage(TUserImage tUserImage) {
        return tUserImageMapper.updateTUserImage(tUserImage);
    }

    /**
     * 删除婚纱照对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTUserImageByIds(String ids) {
        return tUserImageMapper.deleteTUserImageByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除婚纱照信息
     *
     * @param id 婚纱照ID
     * @return 结果
     */
    @Override
    public int deleteTUserImageById(String id) {
        return tUserImageMapper.deleteTUserImageById(id);
    }

    /**
     * 删除照片by Type
     *
     * @param type 照片种类
     * @return 结果
     */
    public int deleteTUserImageByType(String type) {
        return tUserImageMapper.deleteTUserImageByType(type);
    }
}
