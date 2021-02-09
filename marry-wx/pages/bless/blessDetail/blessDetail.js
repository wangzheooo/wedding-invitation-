// pages/bless/index.js
var api = require('../../../api/api.js');
const app = getApp();

Page({

  /**
   * 页面的初始数据
   */
  data: {
    userInfo: {},
    inputValue: ''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this
    wx.getUserInfo({
        success: function (res) {
          that.setData({
            userInfo: res.userInfo
          })
          //console.log(res.userInfo)
        }
      }),
      that.getPraiseList()
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },
  bindKeyInput: function (e) {
    this.setData({
      inputValue: e.detail.value
    })
  },
  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    // console.log("111111111")
    var that = this;

    wx.showNavigationBarLoading() //在标题栏中显示加载

    //加载
    setTimeout(function () {
      that.getPraiseList()
      // complete
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
    }, 1500);

  },
  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  // 获取赞列表
  getPraiseList: function () {
    var that = this
    wx.request({
      url: api.mobileIn,
      method: 'GET',
      data: {
        flag: 'GET_PRAISE'
      },
      success: function (res) {
        wx.hideToast()
        if (200 == res.statusCode) {
          //console.log(res.data)
          //更新数据
          that.setData({
            zanLog: res.data.tBlessUserList
          })
        }
      },
    })
  },
  zan: function (event) {
    var that = this;
    //console.log(userInfo)
    wx.request({
      url: api.mobileIn,
      method: "GET",
      data: {
        flag: 'SAVE_PRAISE',
        openId: app.globalData.openId,
      },
      dataType: "json",
      success: res => {
        if (200 == res.statusCode) {
          // console.log(res.data)
          that.getPraiseList()
          wx.showModal({
            title: '提示',
            content: res.data.message,
            showCancel: false
          })
        }
      }
    })
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    wx.showShareMenu({
      withShareTicket: true,
      menus: ['shareAppMessage', 'shareTimeline']
    });
    return {
      title: '诚意邀请你参加我们的婚礼',
      imageUrl: api.image9,
      path: "pages/splash/splash",
      success: function (res) {
        wx.showToast({
          title: '分享成功',
        })
      },
      fail: function (res) {
        // 转发失败
        wx.showToast({
          title: '分享取消',
        })
      }
    }
  },
  //用户点击右上角分享朋友圈
  onShareTimeline: function () {
    return {
      title: '诚意邀请你参加我们的婚礼',
      imageUrl: app.globalData.images.image004.imageUrlFinally,
    }
  },
})