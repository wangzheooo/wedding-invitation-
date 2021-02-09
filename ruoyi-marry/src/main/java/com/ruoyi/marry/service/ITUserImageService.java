package com.ruoyi.marry.service;

import java.util.List;
import com.ruoyi.marry.domain.TUserImage;

/**
 * 婚纱照Service接口
 * 
 * @author user_marry
 * @date 2020-11-19
 */
public interface ITUserImageService 
{
    /**
     * 查询婚纱照
     * 
     * @param id 婚纱照ID
     * @return 婚纱照
     */
    public TUserImage selectTUserImageById(String id);

    /**
     * 查询婚纱照列表
     * 
     * @param tUserImage 婚纱照
     * @return 婚纱照集合
     */
    public List<TUserImage> selectTUserImageList(TUserImage tUserImage);

    /**
     * 新增婚纱照
     * 
     * @param tUserImage 婚纱照
     * @return 结果
     */
    public int insertTUserImage(TUserImage tUserImage);

    /**
     * 修改婚纱照
     * 
     * @param tUserImage 婚纱照
     * @return 结果
     */
    public int updateTUserImage(TUserImage tUserImage);

    /**
     * 批量删除婚纱照
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTUserImageByIds(String ids);

    /**
     * 删除婚纱照信息
     * 
     * @param id 婚纱照ID
     * @return 结果
     */
    public int deleteTUserImageById(String id);

    /**
     * 删除照片by Type
     *
     * @param type 照片种类
     * @return 结果
     */
    public int deleteTUserImageByType(String type);
}
