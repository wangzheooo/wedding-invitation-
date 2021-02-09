var api = require('../../api/api.js');
var util = require('../../utils/util.js');
const app = getApp();

import {
  $wuxDialog
} from '../../dist/index';
import {
  $wuxToast
} from '../../dist/index';

Page({
  data: {
    phonehe: '',
    phoneshe: '',
    message: [
      '你点了我一下😂',
      '你竟然点我🌞',
      '你再点一下😤',
      '...',
      '送你一枚金币💰',
      '点我可能会有惊喜🎲',
      '点我10%概率得到一枚金币',
      '再点我试试',
      '被你发现了这个彩蛋🍀',
      '......',
    ],
    isShow: true,
    visible: false,
    longitude: 0,
    latitude: 0,
    markers: [],
  },
  callhe: function () {
    var that = this;

    $wuxDialog().confirm({
      resetOnClose: true,
      closable: false,
      content: '确定要呼叫吗？',
      onConfirm(e) {
        wx.makePhoneCall({
          phoneNumber: that.data.phonehe
        })
      },
      onCancel(e) {
        // that.showToastCancel("呼叫取消")
      },
    })

  },
  callshe: function () {
    var that = this;

    $wuxDialog().confirm({
      resetOnClose: true,
      closable: false,
      content: '确定要呼叫吗？',
      onConfirm(e) {
        wx.makePhoneCall({
          phoneNumber: that.data.phoneshe
        })
      },
      onCancel(e) {
        // that.showToastCancel("呼叫取消")
      },
    })

  },

  showToastCancel(text) {
    $wuxToast().show({
      type: 'cancel',
      duration: 500,
      color: '#fff',
      text: text,
      success: () => console.log('操作取消')
    })
  },

  onContact(e) {
    console.log('onContact', e)
  },
  imgOnClick: function () {
    var that = this;
    var i = util.getRandom(0, 4)
    // console.log(that.data.message[i])
    that.setData({
      message_text: that.data.message[i]
    });
  },
  onChange(e) {
    var that = this;
    var goldStatus = app.globalData.marryInfo.goldStatus;
    if (goldStatus == 1) {
      that.setData({
        visible: false,
      })
      var i = util.getRandom(0, 9);
      if (i == 4) {
        if (app.globalData.openId != null && app.globalData.openId != "") {
          wx.showModal({
            title: '提示',
            content: "送你一枚金币💰",
            showCancel: false
          })
          that.setData({
            visible: false,
          });
          that.saveGold();
        } else {
          that.setData({
            message_text: "本想送你一个金币,但是你太神秘了,先授权吧",
            visible: true,
          });
        }
      } else {
        that.setData({
          message_text: that.data.message[i],
          visible: true,
        });
        setTimeout(function () {
          that.setData({
            visible: false,
          });
        }, 5000)
      }
    }
  },
  saveGold: function () {
    wx.request({
      url: api.mobileIn,
      method: "GET",
      data: {
        flag: 'SAVE_GOLD',
        openId: app.globalData.openId
      },
      dataType: "json",
      success: res => {
        // if (200 == res.statusCode) {
        //   wx.showModal({
        //     title: '提示',
        //     content: res.data,
        //     showCancel: false
        //   })
        // }
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;

    that.setData({
      phonehe: app.globalData.marryInfo.bridegroomTel,
      phoneshe: app.globalData.marryInfo.brideTel,
      longitude: parseFloat(app.globalData.marryInfo.longitude),
      latitude: parseFloat(app.globalData.marryInfo.latitude),
      markers: [{
        id: 1,
        longitude: parseFloat(app.globalData.marryInfo.longitude),
        latitude: parseFloat(app.globalData.marryInfo.latitude),
      }],
    })
  },

  markertap(e) {
    wx.openLocation({
      longitude: parseFloat(app.globalData.marryInfo.longitude),
      latitude: parseFloat(app.globalData.marryInfo.latitude),
      scale: 15,
      name: '',
      address: ''
    })
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
    var that = this;
    that.setData({
      visible: false,
    })
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

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