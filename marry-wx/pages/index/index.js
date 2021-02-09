var api = require('../../api/api.js');
var imageUtil = require('../../utils/util.js');
var app = getApp();
Page({
  data: {
    isDoudong: false, //控制图片抖动
    margin_bottom_old: 320,
    margin_left_old: 350,
    margin_bottom: 320,
    margin_left: 350,
    lock: 0,
    heartX_temp: 0,
    heartY_temp: 0,
    heartX: 0,
    heartY: 0,
    extraClasses: '',
  },
  handleTouchEnd: function (e) {
    var that = this;
    // console.info(e)
    if (that.data.lock == 1) {

      //手机rpx,总
      // console.info(wx.getSystemInfoSync().windowWidth * dpr) //宽
      // console.info(wx.getSystemInfoSync().windowHeight * dpr) //高

      //rpx,原
      // console.info(that.data.margin_left_old) //原x
      // console.info(that.data.margin_bottom_old) //原y

      // //像素,最后
      // console.info(that.data.margin_left) //最后x
      // console.info(that.data.margin_bottom) //最后y

      //如果往下弹,就直接恢复
      if (that.data.margin_bottom >= that.data.margin_bottom_old) {
        that.setData({
          extraClasses: '',
          margin_left: that.data.margin_left_old,
          margin_bottom: that.data.margin_bottom_old,
          lock: 1,
        })
      } else {
        var dpr = 750 / wx.getSystemInfoSync().windowWidth;

        //弹的最高top
        var yTop = wx.getSystemInfoSync().windowHeight * dpr * 0.9;

        //计算斜率
        var a = (that.data.margin_bottom - that.data.margin_bottom_old) / (that.data.margin_left - that.data.margin_left_old)
        var b = that.data.margin_bottom_old - (a * that.data.margin_left_old)
        // console.info(a) //宽
        // console.info(b) //高

        if (a == 0) {
          that.setData({
            extraClasses: 'box-transition',
            margin_left: that.data.margin_left_old,
            margin_bottom: yTop,
            lock: 0,
          })
        } else {
          //判断当到达最高点top时,x的值
          var xTemp = (yTop - b) / a

          //如果x在屏幕内,就到了顶点返回
          if (xTemp >= 0 && xTemp <= (wx.getSystemInfoSync().windowWidth * dpr)) {
            that.setData({
              extraClasses: 'box-transition',
              margin_left: xTemp,
              margin_bottom: (xTemp * a) + b,
              lock: 0,
            })
          } else if (xTemp < 0) {
            that.setData({
              extraClasses: 'box-transition',
              margin_left: 0,
              margin_bottom: b,
              lock: 0,
            })
          } else {
            that.setData({
              extraClasses: 'box-transition',
              margin_left: wx.getSystemInfoSync().windowWidth * dpr,
              margin_bottom: (wx.getSystemInfoSync().windowWidth * dpr) * a + b,
              lock: 0,
            })
          }
        }

        setTimeout(function () {
          that.setData({
            extraClasses: '',
            margin_left: that.data.margin_left_old,
            margin_bottom: that.data.margin_bottom_old,
            lock: 1,
          })
        }, 300)

      }
    }
  },
  handleLongPress: function (e) {
    var that = this;
    wx.vibrateShort();
    that.setData({
      lock: 1,
      heartX: e.touches[0].clientX,
      heartY: e.touches[0].clientY,
    })
  },
  touchS: function (e) {
    var that = this;
    if (that.data.lock == 1) {
      that.setData({
        heartX: e.touches[0].clientX,
        heartY: e.touches[0].clientY,
      })
    }
  },
  touchM: function (e) {
    var that = this;
    var dpr = 750 / wx.getSystemInfoSync().windowWidth;
    if (that.data.lock == 1) {
      that.setData({
        extraClasses: '',
        margin_left: (that.data.margin_left_old + (e.touches[0].clientX - that.data.heartX) * dpr),
        margin_bottom: (that.data.margin_bottom_old - (e.touches[0].clientY - that.data.heartY) * dpr),
        heartX_temp: e.touches[0].clientX,
        heartY_temp: e.touches[0].clientY,
      })
    }
  },
  regionchange(e) {
    console.log(e.type)
  },
  controltap(e) {
    console.log(e.controlId)
  },
  onLoad: function () {
    var that = this;
    //抖动相关的
    setInterval(function () {
      let isDoudong = that.data.isDoudong
      that.setData({
        isDoudong: !isDoudong
      })
    }, 1000);

    //添加这个判断是为了防止用户断网之前数据没有,再次获取一下
    if (app.globalData.images == null) {
      wx.request({
        url: api.mobileIn,
        method: 'GET',
        data: {
          flag: 'GET_IMAGE'
        },
        success: function (res) {
          app.globalData.images = res.data;

          that.setData({
            //图片地址
            image8: app.globalData.images.image003.imageUrlFinally
          });
        },
        fail: function (res) {
          console.info("get image fail");
        },
        complete: function (res) {
          // console.info("get image complete");
        }
      });
    } else {
      that.setData({
        //图片地址
        image8: app.globalData.images.image003.imageUrlFinally
      });
    }

    if (app.globalData.marryInfo == null) {
      wx.request({
        url: api.mobileIn,
        method: 'GET',
        data: {
          flag: 'GET_MARRYINFO'
        },
        success: function (res) {
          app.globalData.marryInfo = res.data.tMarryUser
          that.setData({
            bridegroomname: app.globalData.marryInfo.bridegroomName,
            bridename: app.globalData.marryInfo.brideName,
            date_yang: app.globalData.marryInfo.solarCalendar,
            date_nong: app.globalData.marryInfo.lunarCalendar,
            marry_addr: app.globalData.marryInfo.addr
          });
        },
        fail: function (res) {
          console.info("get image fail");
        },
        complete: function (res) {
          // console.info("get image complete");
        }
      });
    } else {
      that.setData({
        bridegroomname: app.globalData.marryInfo.bridegroomName,
        bridename: app.globalData.marryInfo.brideName,
        date_yang: app.globalData.marryInfo.solarCalendar,
        date_nong: app.globalData.marryInfo.lunarCalendar,
        marry_addr: app.globalData.marryInfo.addr
      });
    }

    //获取rpx和px的比
    wx.getSystemInfo({
      success: function (res) {
        that.setData({
          proportion: 750 / res.windowWidth
        });
      }
    });

    if (app.globalData.openId == null) {
      //重新获取一下openid,并赋给全局变量
      wx.login({
        success: function (res) {
          //发起网络请求
          wx.request({
            url: api.mobileIn,
            data: {
              flag: 'GET_OPENID',
              code: res.code,
            },
            method: 'GET',
            success: function (res) {
              // console.info("二次获取openid" + res.data.openid);
              // 将openId设成全局
              app.globalData.openId = res.data.openid

              that.saveUser();
            },
            fail: function (res) {
              console.info("get code fail");
            },
            complete: function (res) {
              // console.info("get code complete");
            }
          });
        }
      })
    } else {
      that.saveUser();
    }
  },

  imageLoad: function (e) {
    var imageSize = imageUtil.imageUtil(e)
    this.setData({
      imagewidth: imageSize.imageWidth,
      imageheight: imageSize.imageHeight
    })
  },
  //保存用户信息
  saveUser: function () {
    // console.info("保存信息时的openid:" + app.globalData.openId);

    wx.request({
      url: api.mobileIn,
      method: 'GET',
      data: {
        flag: 'SAVE_USER',
        openId: app.globalData.openId,
        userInfo: app.globalData.userInfo
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