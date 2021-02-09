package com.ruoyi.marry.mapper;

import java.util.List;
import com.ruoyi.marry.domain.TMarryUser;

/**
 * 小程序设置Mapper接口
 * 
 * @author user_marry
 * @date 2020-11-19
 */
public interface TMarryUserMapper 
{
    /**
     * 查询小程序设置
     * 
     * @param id 小程序设置ID
     * @return 小程序设置
     */
    public TMarryUser selectTMarryUserById(Integer id);

    /**
     * 查询小程序设置列表
     * 
     * @param tMarryUser 小程序设置
     * @return 小程序设置集合
     */
    public List<TMarryUser> selectTMarryUserList(TMarryUser tMarryUser);

    /**
     * 新增小程序设置
     * 
     * @param tMarryUser 小程序设置
     * @return 结果
     */
    public int insertTMarryUser(TMarryUser tMarryUser);

    /**
     * 修改小程序设置
     * 
     * @param tMarryUser 小程序设置
     * @return 结果
     */
    public int updateTMarryUser(TMarryUser tMarryUser);

    /**
     * 删除小程序设置
     * 
     * @param id 小程序设置ID
     * @return 结果
     */
    public int deleteTMarryUserById(Integer id);

    /**
     * 批量删除小程序设置
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTMarryUserByIds(String[] ids);
}
