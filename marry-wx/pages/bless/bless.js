// pages/bless/index.js
import Barrage from './barrage.js'
var api = require('../../api/api.js');
const app = getApp();
var util = require('../../utils/util.js');
import {
  $wuxDialog
} from '../../dist/index';
import {
  $wuxToast
} from '../../dist/index';

function compareVersion(v1, v2) {
  v1 = v1.split('.')
  v2 = v2.split('.')
  const len = Math.max(v1.length, v2.length)

  while (v1.length < len) {
    v1.push('0')
  }
  while (v2.length < len) {
    v2.push('0')
  }

  for (let i = 0; i < len; i++) {
    const num1 = parseInt(v1[i])
    const num2 = parseInt(v2[i])

    if (num1 > num2) {
      return 1
    } else if (num1 < num2) {
      return -1
    }
  }
  return 0
}

Page({

  /**
   * 页面的初始数据
   */
  data: {
    userInfo: {},
    inputValue: '',
    zanNum: 0,
    isDoudong: false, //控制图片抖动
    showGiftView: false,
    gold_money: 0,
    commentStatus: "",
    goldStatus: "",
    golds: null,
    pages: null,
    tabs: [],
    version: 'v2',
    barrageList: null,
    colors: ['#0000FF', '#00FF00', 'black', '#00FFFF', '#FF00FF', '#C0C0C0']
  },
  pointLeaderboard: function () {
    var that = this;
    //that.goPage("test");
    that.goPage("leaderboard");
  },
  //跳转页面
  goPage: function (pagename) {
    wx.navigateTo({
      url: '../' + pagename + '/' + pagename
    })
  },
  getGold: function () {
    var that = this;

    // 获取礼物列表
    wx.request({
      url: api.mobileIn,
      method: 'GET',
      data: {
        flag: 'GET_GOLDINFO'
      },
      success: function (res) {
        if ('success' == res.data.resultCode) {
          var page_num = 8; //每页显示的礼物数
          var golds_info = res.data.tUserGoldInfoList; //礼物信息
          var golds_num = golds_info.length; //一共有多少礼物数
          var pages = Math.ceil(golds_num / page_num); //计算分成几页显示

          var tabs = [];
          var tab_temp = [];
          for (var i = 0; i < pages; i++) {
            tab_temp = [];
            var k = 0;
            for (var j = i * 8; j < (i + 1) * 8; j++) {
              tab_temp[k] = golds_info[j];
              if ((j + 1) == golds_num) {
                break;
              }
              k++;
            }
            tabs[i] = tab_temp;
          }

          that.setData({
            golds: res.data.tUserGoldInfoList,
            pages: pages,
            tabs: tabs
          })
        }
      },
    });

    // 获取用户余额
    wx.request({
      url: api.mobileIn,
      method: 'GET',
      data: {
        flag: 'GET_GOLD',
        openId: app.globalData.openId
      },
      success: function (res) {
        // wx.hideToast()
        if (200 == res.statusCode) {
          if ('success' == res.data.resultCode) {
            that.setData({
              gold_money: res.data.gold
            })
          }
        }
      },
    });

  },
  pointGift: function () {
    var that = this;
    if (!that.data.showGiftView) {
      that.getGold();
    }
    that.setData({
      showGiftView: (!that.data.showGiftView)
    })
  },
  pointGiftAndSend: function (e) {
    // console.log(e.currentTarget.dataset);
    this.sendGift(e.currentTarget.dataset);
  },
  sendGift: function (giftInfo) {
    var that = this;
    $wuxDialog().confirm({
      resetOnClose: true,
      closable: true,
      content: '确定要送出吗？',
      onConfirm(e) {
        if (that.data.gold_money >= giftInfo.giftgold) {
          that.updateGold(giftInfo)
        } else {
          that.showToastIcon("很尴尬,金币不是很够")
        }
      },
      onCancel(e) {
        that.showToastCancel("取消操作")
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
  showToastSuccess(text) {
    $wuxToast().show({
      type: 'success',
      duration: 500,
      color: '#fff',
      text: text,
      success: () => console.log('已完成')
    })
  },
  showToastIcon(text) {
    $wuxToast().show({
      type: 'default',
      duration: 1500,
      color: '#fff',
      icon: 'ios-happy',
      text: text,
      success: () => console.log('自定义图标')
    })
  },
  updateGold: function (giftInfo) {
    var that = this;
    wx.request({
      url: api.mobileIn,
      method: 'GET',
      data: {
        flag: 'UPDATE_GOLD',
        openId: app.globalData.openId,
        id: giftInfo.id
      },
      success: function (res) {
        // wx.hideToast()
        if (200 == res.statusCode) {
          that.showToastSuccess(res.data.message)
          //更新数据
          that.getGold();
          if (app.globalData.marryInfo.barrageStatus == 1) {
            if (that.data.userInfo.avatarUrl == null) {
              wx.request({
                url: api.mobileIn,
                method: 'GET',
                data: {
                  flag: 'GET_USER_INFO',
                  openId: app.globalData.openId
                },
                success: function (res) {
                  var avatarUrl = res.data.tUser.avatarUrl;
                  if (avatarUrl == "avatar_visitor.png" || avatarUrl == "" || avatarUrl == null) {
                    avatarUrl = "../../image/others/" + avatarUrl;
                  }
                  that.sendBarrage(res.data.tUser.nickName, avatarUrl, giftInfo.giftname, giftInfo.gifturl);
                }
              })

            } else {
              that.sendBarrage(that.data.userInfo.nickName, that.data.userInfo.avatarUrl, giftInfo.giftname, giftInfo.gifturl);
            }

          }

        }
      },
    })
  },

  sendBarrage: function (nickName, avatarUrl, giftName, giftUrl) {

    //原本弹幕开头是用户头像,弹幕结尾是礼物图片,但是canvas 绘制时,图片要存在本地,而且downloadfile需要设置域名,日后再更

    // this.barrage.send({
    //   content: nickName + " 送出了 ",
    //   fillStyle: 'red',
    //   isSend: 1,
    //   images: [{
    //     image: avatarUrl, // 图片资源
    //     dWidth: 25, // 绘制宽度
    //     dHeight: 25, // 绘制高度
    //     position: "head", // 显示位置，弹幕开头(head)、结尾(tail)
    //     gap: 4 // 与弹幕文字的距离，默认4
    //   }, {
    //     image: giftUrl, // 图片资源
    //     dWidth: 25, // 绘制宽度
    //     dHeight: 25, // 绘制高度
    //     position: "tail", // 显示位置，弹幕开头(head)、结尾(tail)
    //     gap: 4 // 与弹幕文字的距离，默认4
    //   }]
    // })

    this.barrage.send({
      content: "→→→感谢 " + nickName + " 送出的 " + giftName + "←←←",
      fillStyle: 'red',
      isSend: 1
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this

    //审核期间要是关闭了评论功能,但是又想修改评论功能,可以放开下面这句
    // app.globalData.marryInfo.commentStatus = "1";

    var commentStatus = app.globalData.marryInfo.commentStatus;
    if (commentStatus == 1) {
      that.setData({
        commentStatus: "",
      })
    } else {
      that.setData({
        commentStatus: "none",
      })
    }

    var goldStatus = app.globalData.marryInfo.goldStatus;
    if (goldStatus == 1) {
      that.setData({
        goldStatus: "",
      })
    } else {
      that.setData({
        goldStatus: "none",
      })
    }

    const SDKVersion = wx.getSystemInfoSync().SDKVersion
    const version = compareVersion(SDKVersion, '2.9.0') >= 0 ? 'v2' : 'v1'
    this.setData({
      version
    });

    if (app.globalData.marryInfo.barrageStatus == 1) {
      that.openBarrage();
    }

    // wx.getUserInfo({
    //     success: function (res) {
    //       that.setData({
    //         userInfo: res.userInfo
    //       })
    //       //console.log(res.userInfo)
    //     }
    //   }),

    that.getPraiseList(),
      that.getCommentList(),

      //抖动相关的
      setInterval(function () {
        let isDoudong = that.data.isDoudong
        that.setData({
          isDoudong: !isDoudong
        })
      }, 1000)
  },

  openBarrage() {
    const barrage = this.barrage = new Barrage('#canvas', {
      font: 'bold 16px sans-serif',
      duration: 5,
      lineHeight: 2,
      mode: 'separate',
    })
    barrage.open();

    this.getBarrage(barrage);

    this.timer = setInterval(() => {
      this.getBarrage(barrage);
    }, 15000)
  },

  // 获取弹幕
  getBarrage: function (barrage) {
    var that = this;
    wx.request({
      url: api.mobileIn,
      method: 'GET',
      data: {
        flag: 'GET_BARRAGE'
      },
      success: function (res) {
        if (200 == res.statusCode) {
          // console.log(res.data.tUserGoldRecordList)
          if (res.data.tUserGoldRecordList != null) {
            const data = [];
            for (var i = 0; i < res.data.tUserGoldRecordList.length; i++) {

              // var avatarUrl = res.data.tUserGoldRecordList[i].avatarUrl;
              // if (avatarUrl == "avatar_visitor.png" || avatarUrl == "" || avatarUrl == null) {
              //   avatarUrl = "../../image/others/" + avatarUrl;
              // }

              // data.push({
              //   content: res.data.tUserGoldRecordList[i].nickName + " 送出 ",
              //   fillStyle: 'black',
              //   images: [{
              //     image: avatarUrl, // 图片资源
              //     dWidth: 25, // 绘制宽度
              //     dHeight: 25, // 绘制高度
              //     position: "head", // 显示位置，弹幕开头(head)、结尾(tail)
              //     gap: 4 // 与弹幕文字的距离，默认4
              //   }, {
              //     image: res.data.tUserGoldRecordList[i].giftUrl, // 图片资源
              //     dWidth: 25, // 绘制宽度
              //     dHeight: 25, // 绘制高度
              //     position: "tail", // 显示位置，弹幕开头(head)、结尾(tail)
              //     gap: 4 // 与弹幕文字的距离，默认4
              //   }]
              // })

              var str = res.data.tUserGoldRecordList[i].nickName + " 送出 " + res.data.tUserGoldRecordList[i].giftName;
              data.push({
                content: str,
                fillStyle: that.data.colors[util.getRandom(0, that.data.colors.length - 1)]
              })

              data.push({
                content: ""
              })
            }

            barrage.addData(data);
          }
        }
      },
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
      showGiftView: false,
    })
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
    var that = this;

    wx.showNavigationBarLoading() //在标题栏中显示加载

    //加载
    setTimeout(function () {
      that.getPraiseList();
      that.getCommentList();
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
  // 获取评论列表
  getCommentList: function () {
    var that = this

    // console.info(that.data.commentStatus)
    if (app.globalData.marryInfo.commentStatus == 1) {
      wx.request({
        url: api.mobileIn,
        method: 'GET',
        data: {
          flag: 'GET_COMMENT'
        },
        success: function (res) {
          // console.log(res.data.tBlessCommentList)
          for (var i = 0; i < res.data.tBlessCommentList.length; i++) {
            res.data.tBlessCommentList[i].createTime = util.toDate(res.data.tBlessCommentList[i].createTime)
          }
          that.setData({
            chatList: res.data.tBlessCommentList
          });
        }
      })
    }
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
        // wx.hideToast()
        if (200 == res.statusCode) {
          // console.log(res.data.tBlessUserList)
          //更新数据
          that.setData({
            zanLog: res.data.tBlessUserList
          })
        }
      },
    })
  },
  loadMoreFriends: function (e) {
    wx.navigateTo({
      url: 'blessDetail/blessDetail'
    })
  },
  zan: function (event) {
    var that = this;
    wx.request({
      url: api.mobileIn,
      data: {
        flag: 'SAVE_PRAISE',
        openId: app.globalData.openId
      },
      method: "GET",
      dataType: "json",
      success: res => {
        if (200 == res.statusCode) {
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
  foo: function () {
    var that = this;
    if (that.data.inputValue) {
      //留言内容不是空值

      var words = that.data.inputValue;
      wx.request({
        url: api.mobileIn,
        data: {
          flag: 'SAVE_COMMENT',
          comment: words,
          openId: app.globalData.openId
        },
        method: "GET",
        dataType: "json",
        success: res => {
          if (200 == res.statusCode) {
            that.getCommentList();
            wx.showModal({
              title: '提示',
              content: res.data.message,
              showCancel: false
            });
          }
        }
      })
    } else {
      //Catch Error
      wx.showModal({
        title: '提示',
        content: '您还没有填写内容',
        showCancel: false
      })
    }
    that.setData({
      inputValue: '' //将data的inputValue清空
    });
    return;
  },
  preventTouchMove: function (e) {
    //该方法的作用是为了弹框后不让界面滑动,这样子设置虽然在微信开发者工具上仍然可以滑动，但是在真机上却不可以滑动。
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