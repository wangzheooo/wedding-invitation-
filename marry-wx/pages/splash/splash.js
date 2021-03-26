var api = require('../../api/api.js');
var app = getApp();

Page({
  data: {
    userInfo: {},
    remind: '加载中',
    help_status: false,
    userid_focus: false,
    passwd_focus: false,
    userid: '',
    passwd: '',
    angle: 0,
    logo: '',
    canIUseGetUserProfile: false,
    hasUserInfo: false
  },
  onLoad: function () {
    var that = this
    that.setData({
      //图片地址
      wave: '../../image/wave.png',
      loading: '../../image/loading.gif'
    })

    //调用应用实例的方法获取全局数据,20210413起停止使用,默认授权后也不能静默获取了,肯定会弹窗
    // app.getUserInfo(function (userInfo) {
    //   //更新数据
    //   that.setData({
    //     userInfo: userInfo
    //   })
    // })

    // console.log("首次获取userInfo")
    // console.log(that.data.userInfo)

    wx.request({
      url: api.mobileIn,
      method: 'GET',
      data: {
        flag: 'GET_IMAGE'
      },
      success: function (res) {
        app.globalData.images = res.data
        that.setData({
          logo: res.data.image002.imageUrlFinally
        })
      },
      fail: function (res) {
        console.info("get image fail");
      },
      complete: function (res) {
        // console.info("get image complete");
      }
    });

    if (wx.getUserProfile) {
      this.setData({
        canIUseGetUserProfile: true
      })
    }

  },
  onReady: function () {
    var _this = this;
    setTimeout(function () {
      _this.setData({
        remind: ''
      });
    }, 1000);
    wx.onAccelerometerChange(function (res) {
      var angle = -(res.x * 30).toFixed(1);
      if (angle > 14) {
        angle = 14;
      } else if (angle < -14) {
        angle = -14;
      }
      if (_this.data.angle !== angle) {
        _this.setData({
          angle: angle
        });
      }
    });
  },
  btnEnter: function () {
    var that = this
    wx.getUserProfile({
      desc: '用于显示祝福人信息', // 声明获取用户个人信息后的用途，后续会展示在弹窗中，请谨慎填写
      success: (res) => {
        that.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
        app.globalData.userInfo = res.userInfo
      },
      complete: () => {
        // console.log("最终获取userInfo")
        // console.log(that.data.userInfo)

        // console.log("全局openId")
        // console.log(app.globalData.openId)
        this.goHome()
      }
    })

  },
  //进入主页面
  goHome: function () {
    wx.switchTab({
      url: '../index/index'
    });
  },
  getUserInfo(e) {
    //这个方法不用了
    console.log("new e")
    console.log(e)
    if (e.detail.errMsg === 'getUserInfo:ok') {
      // console.log('获取用户信息成功')
      wx.showLoading({
        title: '加载中...',
      })
      app.globalData.userInfo = e.detail.rawData
      // console.log('app.globalData.userInfo', app.globalData.userInfo)
      this.goHome()
    } else {
      // console.log('fail', '获取用户信息失败')
      this.goHome()
    }
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
      imageUrl: app.globalData.images.image004.imageUrlFinally,
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