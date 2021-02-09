const filterContent = (string) => string.replace(/[\r\n]/g, "").replace(/<.*?>/g, "\n")

const formatMakettime = (dateString) => {
  return (new Date(dateString)).toString().split(' ', 4).slice(1, 4).join(' ')
}

const getBeginTime = (type) => {
  let isOther = type !== 'reading' && type !== 'essay' && type !== 'index'
  let beginTime = isOther ? OTHER_BEGIN_TIME : VOL_AND_READING_BEGIN_TIME
  return new Date(beginTime)
}

const getDateList = (type) => {
  let begin = getBeginTime(type)
  let beginYear = begin.getFullYear()
  let beginMonth = begin.getMonth()

  let now = new Date()
  let nowYear = now.getFullYear()
  let nowMonth = now.getMonth()

  let dateList = [];
  for (let y = nowYear; y >= beginYear; y--) {
    for (let m = 11; m >= 0; m--) {
      dateList.push({
        title: MONTH_MAP[m] + y,
        value: y + '-' + (m + 1)
      })
    }
  }

  dateList = dateList.slice(11 - nowMonth, dateList.length - beginMonth)
  return dateList
}

function imageUtil(e) {
  var imageSize = {};
  var originalWidth = e.detail.width; //图片原始宽
  var originalHeight = e.detail.height; //图片原始高
  var originalScale = originalHeight / originalWidth; //图片高宽比
  //console.log('originalWidth: ' + originalWidth)
  //console.log('originalHeight: ' + originalHeight)
  //获取屏幕宽高
  wx.getSystemInfo({
    success: function (res) {
      var windowWidth = res.windowWidth;
      var windowHeight = res.windowHeight;
      var windowscale = windowHeight / windowWidth; //屏幕高宽比
      /*
      console.log('windowWidth: ' + windowWidth)
      console.log('windowHeight: ' + windowHeight)
      wx.showModal({
        title: '提示',
        content: '屏幕宽: ' + windowWidth + ',屏幕高: ' + windowHeight,
        success: function (res) {
          if (res.confirm) {
            console.log('用户点击确定')
          } else if (res.cancel) {
            console.log('用户点击取消')
          }
        }
      })
      */
      if (originalScale > windowscale) { //图片高宽比大于屏幕高宽比
        //图片缩放后的宽为屏幕宽
        imageSize.imageWidth = windowWidth;
        imageSize.imageHeight = (windowWidth * originalHeight) / originalWidth;
      } else { //图片高宽比小于屏幕高宽比
        //图片缩放后的高为屏幕高
        imageSize.imageHeight = windowHeight;
        imageSize.imageWidth = (windowHeight * originalWidth) / originalHeight;
      }
    }
  })
  //console.log('缩放后的宽: ' + imageSize.imageWidth)
  //console.log('缩放后的高: ' + imageSize.imageHeight)
  return imageSize;
}

function getRandom(min, max) {
  return Math.floor(Math.random() * (max - min + 1) + min);
}

//时间戳转换时间
function toDate(number) {
  // var n = number * 1000;
  var date = new Date(number);
  var Y = date.getFullYear();
  var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1);
  var D = date.getDate() < 10 ? '0' + date.getDate() : date.getDate();

  var hour = (date.getHours() + 1 <= 10 ? '0' + (date.getHours()) : date.getHours());
  var minute = (date.getMinutes() + 1 <= 10 ? '0' + (date.getMinutes()) : date.getMinutes());
  var second = (date.getSeconds() + 1 <= 10 ? '0' + (date.getSeconds()) : date.getSeconds());
  return (Y + "-" + M + "-" + D + " " + hour + ":" + minute + ":" + second)
}

module.exports = {
  getDateList,
  filterContent,
  formatMakettime,
  imageUtil: imageUtil,
  getRandom: getRandom,
  toDate: toDate
}