// pages/leaderboard/leaderboard.js
var api = require('../../api/api.js');
var util = require('../../utils/util.js');
const app = getApp();

Page({

  /**
   * 页面的初始数据
   */
  data: {
    index: 0,
    current: 'tab1',
    tabs: [{
        key: 'tab1',
        title: '礼物排行榜🎁'
      },
      {
        key: 'tab2',
        title: '金币排行榜💎'
      },
      {
        key: 'tab3',
        title: '礼物记录'
      }
    ],
    tab1: [],
    tab2: [],
    tab3: [],
  },
  onTabsChange(e) {
    //console.log('onTabsChange', e)
    const {
      key
    } = e.detail
    const index = this.data.tabs.map((n) => n.key).indexOf(key)

    this.setData({
      key,
      index,
    })
  },
  onSwiperChange(e) {
    //console.log('onSwiperChange', e)
    const {
      current: index,
      source
    } = e.detail
    const {
      key
    } = this.data.tabs[index]

    if (!!source) {
      this.setData({
        key,
        index,
      })
    }
  },

  getLeaderboard: function () {
    var that = this;
    wx.request({
      url: api.mobileIn,
      method: "GET",
      data: {
        flag: 'GET_LEADERBOARD',
        openId: app.globalData.openId
      },  
      dataType: "json",
      success: res => {
        if (200 == res.statusCode) {
          // console.log(res.data)
          for (var i = 0; i < res.data.listGiftRecord.length; i++) {
            res.data.listGiftRecord[i].createTime = util.toDate(res.data.listGiftRecord[i].createTime)
          }
          that.setData({
            tab1: res.data.listOfGift,
            tab2: res.data.listOfGold,
            tab3: res.data.listGiftRecord
          })
        }
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;
    // that.setData({
    //   key: 'tab1',
    //   index: 0,
    // })
    that.getLeaderboard();
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

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    var that = this;
    wx.showNavigationBarLoading() //在标题栏中显示加载
    //加载
    setTimeout(function () {
      that.getLeaderboard();
      // complete
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
    }, 500);
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

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