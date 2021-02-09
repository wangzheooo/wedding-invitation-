// 获取字节长度，中文算2个字节
function getStrLen(str) {
  return str.replace(/[^\x00-\xff]/g, 'aa').length
}

// 截取指定字节长度的子串
function substring(str, n) {
  if (!str) return ''

  const len = getStrLen(str)
  if (n >= len) return str

  let l = 0,
    result = ''
  for (let i = 0; i < str.length; i++) {
    const ch = str.charAt(i)
    l = /[^\x00-\xff]/i.test(ch) ? l + 2 : l + 1
    result += ch
    if (l >= n) break
  }
  return result
}

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


// Barrage(控制中心)
class Barrage {
  constructor(selector, opt = {}) {
    this._promise = new Promise((resolve, reject) => {
      const defaultBarrageOpt = {
        width: 300,
        height: 150,
        canvasWidth: 300, // ratio * width
        canvasHeight: 150, // ratio * height
        font: '10px sans-serif',
        duration: 5, // 弹幕屏幕停留时长
        lineHeight: 1.2,
        padding: [10, 0, 10, 0],
        tunnelHeight: 0,
        tunnelNum: 0,
        tunnelMaxNum: 10, // 隧道最大缓冲长度
        maxLength: 50, // 最大字节长度，汉字算双字节
        safeArea: 4, // 发送时的安全间隔
        tunnels: [],
        idleTunnels: [],
        enableTunnels: [],
        alpha: 1, // 全局透明度
        mode: 'overlap', // 弹幕重叠 overlap  不重叠 separate
        range: [0, 1], // 弹幕显示的垂直范围，支持两个值。[0,1]表示弹幕整个随机分布，
        fps: 60, // 刷新率
        tunnelShow: false, // 显示轨道线
      }
      opt = Object.assign({}, defaultBarrageOpt, opt)
      for (const key in opt) {
        this[key] = opt[key]
      }
      const systemInfo = wx.getSystemInfoSync()
      this.SDKVersion = systemInfo.SDKVersion
      this.ratio = systemInfo.pixelRatio
      this.useWebLayerCanvas = compareVersion(this.SDKVersion, '2.9.0') >= 0 ? true : false
      this.selector = selector

      const query = wx.createSelectorQuery()
      query.select(selector).boundingClientRect()
      if (this.useWebLayerCanvas) {
        query.select(selector).node()
        query.exec((res) => {
          this.canvas = res[1].node
          this.init(res[0])
          this.canvas ? resolve() : reject()
        })
      } else {
        query.select(selector).context()
        query.exec((res) => {
          this.ctx = res[1].context
          this.init(res[0])
          this.ctx ? resolve() : reject()
        })
      }
    })
  }

  resize(opt = {}) {
    this._promise.then(() => {
      const query = wx.createSelectorQuery()
      query.select(this.selector).boundingClientRect()
      query.exec((res) => {
        this.close()
        for (const key in opt) {
          this[key] = opt[key]
        }
        this.init(res[0])
        this.open()
      })
    })
  }


  init(opt = {}) {
    this.width = opt.width
    this.height = opt.height
    this.fontSize = this.getFontSize(this.font)

    if (this.useWebLayerCanvas) {
      const ratio = this.ratio // 设备像素比
      this.canvas.width = this.canvasWidth = this.width * ratio
      this.canvas.height = this.canvasHeight = this.height * ratio
      this.ctx = this.canvas.getContext('2d')
      this.ctx.scale(ratio, ratio)

      this.ctx.textBaseline = 'middle'
      this.ctx.globalAlpha = this.alpha
      this.ctx.font = this.font
    }
    // canvas 非同层下无法保存全局状态


    // reset
    this.idleTunnels = []
    this.enableTunnels = []
    this.tunnels = []

    this.availableHeight = (this.height - this.padding[0] - this.padding[2])
    this.tunnelHeight = this.fontSize * this.lineHeight
    this.tunnelNum = Math.floor(this.availableHeight / this.tunnelHeight)
    for (let i = 0; i < this.tunnelNum; i++) {
      this.idleTunnels.push(i) // 空闲的隧道id集合
      this.enableTunnels.push(i) // 可用的隧道id集合
      this.tunnels.push(new Tunnel(this, { // 隧道集合
        width: this.width,
        height: this.tunnelHeight,
        safeArea: this.safeArea,
        maxNum: this.tunnelMaxNum,
        tunnelId: i,
      }))
    }
    // 筛选符合范围的隧道
    this.setRange()
    this._isActive = false
  }

  // 设置显示范围 range: [0,1]
  setRange(range) {
    this._promise.then(() => {
      range = range || this.range
      const top = range[0] * this.tunnelNum
      const bottom = range[1] * this.tunnelNum

      // 释放符合要求的隧道
      // 找到目前空闲的隧道
      const idleTunnels = []
      const enableTunnels = []
      this.tunnels.forEach((tunnel, tunnelId) => {
        if (tunnelId >= top && tunnelId < bottom) {
          tunnel.enable()
          enableTunnels.push(tunnelId)
          this.idleTunnels.indexOf(tunnelId) >= 0 && idleTunnels.push(tunnelId)
        } else {
          tunnel.disable()
        }
      })
      this.idleTunnels = idleTunnels
      this.enableTunnels = enableTunnels
      this.range = range
    })
  }

  setFont(font) {
    this._promise.then(() => {
      if (typeof font !== 'string') return

      this.font = font
      this.fontSize = this.getFontSize(this.font)
      this.ctx.font = font
    })
  }

  setAlpha(alpha) {
    this._promise.then(() => {
      if (typeof alpha !== 'number') return

      this.alpha = alpha
      this.ctx.globalAlpha = alpha
    })
  }

  setDuration(duration) {
    this._promise.then(() => {
      if (typeof duration !== 'number') return

      this.clear()
      this.duration = duration
    })
  }

  // 先只支持 px
  getFontSize(font) {
    const reg = /(\d+)(px)/i
    const match = font.match(reg)
    return (match && match[1]) || 10
  }

  // 开启弹幕
  open() {
    this._promise.then(() => {
      if (this._isActive) return
      this._isActive = true
      this.play()
    })
  }

  // 关闭弹幕，清除所有数据
  close() {
    this._promise.then(() => {
      this._isActive = false
      this.pause()
      this.clear()
    })
  }

  // 开启弹幕滚动
  play() {
    this._promise.then(() => {
      if (this.useWebLayerCanvas) {
        this._rAFId = this.canvas.requestAnimationFrame(() => {
          this.animate()
          this.play()
        })
      } else {
        this._timer = setInterval(() => {
          this.animate()
        }, 16)
      }
    })
  }

  // 停止弹幕滚动
  pause() {
    this._promise.then(() => {
      if (typeof this._rAFId === 'number') {
        this.canvas.cancelAnimationFrame(this._rAFId)
      }
      if (typeof this._timer === 'number') {
        clearInterval(this._timer)
      }
    })
  }

  // 清空屏幕和缓冲的数据
  clear() {
    this._promise.then(() => {
      this.ctx.clearRect(0, 0, this.width, this.height)
      this.tunnels.forEach(tunnel => tunnel.clear())
    })
  }

  // 添加一批弹幕，轨道满时会被丢弃
  addData(data = []) {
    this._promise.then(() => {
      if (!this._isActive) return
      data.forEach(item => this.addBullet2Tunnel(item))
    })
  }

  // 发送一条弹幕
  // 为保证发送成功，选取一条可用隧道，替换待发送队列队头元素
  send(opt = {}) {
    // console.info(opt)
    this._promise.then(() => {
      const tunnel = this.getEnableTunnel()
      if (tunnel === null) return

      opt.tunnelId = tunnel.tunnelId
      const bullet = this.registerBullet(opt)
      tunnel.nextQueue[0] = bullet
    })
  }

  // 添加至轨道 {content, color}
  addBullet2Tunnel(opt = {}) {
    const tunnel = this.getIdleTunnel()
    if (tunnel === null) return

    opt.tunnelId = tunnel.tunnelId
    const bullet = this.registerBullet(opt)
    tunnel.addBullet(bullet)
  }

  registerBullet(opt = {}) {
    opt.tunnelId = opt.tunnelId || 0
    opt.content = substring(opt.content, this.maxLength)
    const textWidth = this.getTextWidth(opt.content)
    const distance = this.mode === 'overlap' ? this.width + textWidth : this.width
    opt.textWidth = textWidth
    opt.speed = distance / (this.duration * this.fps)
    opt.fontSize = this.fontSize
    opt.x = this.width + 100
    opt.y = this.tunnelHeight * (opt.tunnelId + 0.5) + this.padding[0]
    return new Bullet(this, opt)
  }

  // 每帧执行的操作
  animate() {
    // 清空画面后重绘
    this.ctx.clearRect(0, 0, this.width, this.height)

    if (!this.useWebLayerCanvas) {
      this.ctx.setTextBaseline('middle')
      this.ctx.globalAlpha = this.alpha
      this.ctx.font = this.font
    }

    this.tunnelShow && this.drawTunnel()
    this.tunnels.forEach(tunnel => tunnel.animate())

    if (!this.useWebLayerCanvas) this.ctx.draw(false)
  }

  showTunnel() {
    this.tunnelShow = true
  }

  hideTunnel() {
    this.tunnelShow = false
  }

  removeIdleTunnel(tunnelId) {
    const idx = this.idleTunnels.indexOf(tunnelId)
    idx >= 0 && this.idleTunnels.splice(idx, 1)
  }

  addIdleTunnel(tunnelId) {
    const idx = this.idleTunnels.indexOf(tunnelId)
    idx < 0 && this.idleTunnels.push(tunnelId)
  }

  // 从可用的隧道中随机挑选一个
  getEnableTunnel() {
    if (this.enableTunnels.length === 0) return null
    const index = this.getRandom(this.enableTunnels.length)
    return this.tunnels[this.enableTunnels[index]]
  }

  // 从还有余量的隧道中随机挑选一个
  getIdleTunnel() {
    if (this.idleTunnels.length === 0) return null
    const index = this.getRandom(this.idleTunnels.length)
    return this.tunnels[this.idleTunnels[index]]
  }

  getRandom(max = 10, min = 0) {
    return Math.floor(Math.random() * (max - min) + min)
  }

  getTextWidth(content) {
    this.ctx.font = this.font
    return Math.ceil(this.ctx.measureText(content).width)
  }

  drawTunnel() {
    const ctx = this.ctx
    const tunnelColor = '#CCB24D'
    for (let i = 0; i <= this.tunnelNum; i++) {
      const y = this.padding[0] + i * this.tunnelHeight
      ctx.beginPath()
      ctx.strokeStyle = tunnelColor
      ctx.setLineDash([5, 10])
      ctx.moveTo(0, y)
      ctx.lineTo(this.width, y)
      ctx.stroke()
      if (i < this.tunnelNum) {
        ctx.fillStyle = tunnelColor
        ctx.fillText(`弹道${i+1}`, 10, this.tunnelHeight / 2 + y)
      }
    }
  }
}

// tunnel（轨道）
class Tunnel {
  constructor(barrage, opt = {}) {
    const defaultTunnelOpt = {
      activeQueue: [], // 正在屏幕中列表
      nextQueue: [], // 待播放列表
      maxNum: 10,
      freeNum: 10, // 剩余可添加量
      height: 0,
      width: 0,
      disabled: false,
      tunnelId: 0,
      safeArea: 4,
      sending: false, // 弹幕正在发送
    }
    opt = Object.assign({}, defaultTunnelOpt, opt)
    for (const key in opt) {
      this[key] = opt[key]
    }
    this.freeNum = this.maxNum
    this.barrage = barrage // 控制中心
    this.ctx = barrage.ctx
  }

  disable() {
    this.disabled = true
  }

  enable() {
    this.disabled = false
  }

  clear() {
    this.activeQueue = []
    this.nextQueue = []
    this.sending = false
    this.freeNum = this.maxNum
  }

  addBullet(bullet) {
    if (this.disabled) return
    if (this.freeNum === 0) return
    this.nextQueue.push(bullet)
    this.freeNum--
    this.freeNum === 0 && this.barrage.removeIdleTunnel(this.tunnelId)
  }

  animate() {
    if (this.disabled) return
    // 无正在发送弹幕，添加一条
    const nextQueue = this.nextQueue
    const activeQueue = this.activeQueue
    if (!this.sending && nextQueue.length > 0) {
      const bullet = nextQueue.shift()
      activeQueue.push(bullet)
      this.freeNum++
      this.sending = true
      this.barrage.addIdleTunnel(this.tunnelId)
    }

    if (activeQueue.length > 0) {
      activeQueue.forEach(bullet => bullet.move())
      const head = activeQueue[0]
      const tail = activeQueue[activeQueue.length - 1]
      // 队首移出屏幕
      if (head.x + head.textWidth + 50 < 0) {
        activeQueue.shift()
      }
      // 队尾离开超过安全区
      if (tail.x + tail.textWidth + this.safeArea < this.width) {
        this.sending = false
      }
    }
  }
}

// bullet（每条弹幕）
class Bullet {
  constructor(barrage, opt = {}) {
    const defaultBulletOpt = {
      fillStyle: '#000000', // 默认黑色
      font: '10px sans-serif',
      fontSize: 10, // 全局字体大小
      content: '',
      textWidth: 0,
      speed: 0, // 根据屏幕停留时长计算
      x: 0,
      y: 0,
      tunnelId: 0,
      isSend: 0,
      // 弹幕图片结构
      // {
      //   image, // 图片资源
      //   dWidth, // 绘制宽度
      //   dHeight, // 绘制高度
      //   position // 显示位置，弹幕开头(head)、结尾(tail)
      //   gap // 与弹幕文字的距离，默认4
      // }
      images: []
      // status: 0 //0:待播放 1: 未完全进入屏幕 2: 完全进入屏幕 3: 完全退出屏幕
    }
    opt = Object.assign({}, defaultBulletOpt, opt)
    for (const key in opt) {
      this[key] = opt[key]
    }
    this.barrage = barrage
    this.ctx = barrage.ctx
  }

  move() {
    this.images.forEach(item => {
      const {
        image,
        dWidth = this.fontSize,
        dHeight = this.fontSize,
        position = 'head',
        gap = 4
      } = item
      const x = position === 'tail' ? this.x + this.textWidth + gap : this.x - gap - dWidth
      const y = this.y - 0.5 * dHeight

      // this.ctx.save()
      // // 开始创建一个路径
      // this.ctx.beginPath()
      // // 画一个圆形裁剪区域
      // this.ctx.arc(dWidth / 2 + x, dHeight / 2 + y, dWidth / 2, 0, Math.PI * 2, false)

      // // 裁剪
      // this.ctx.clip()
      

      this.ctx.drawImage(image, x, y, dWidth, dHeight)
      // this.ctx.restore()
    })
    this.x = this.x - this.speed

    this.ctx.fillStyle = this.fillStyle
    this.ctx.fillText(this.content, this.x, this.y)

    // if (this.isSend == 1) {
    //   var r = 15;
    //   var color = "red";
    //   this.ctx.save()
    //   // 开始创建一个路径
    //   this.ctx.beginPath()

    //   // 上边框
    //   this.ctx.moveTo(this.x - r - r, this.y - r)
    //   this.ctx.lineTo(this.x + this.textWidth + 4 + r + r, this.y - r)

    //   // 右边框
    //   this.ctx.moveTo(this.x + this.textWidth + 4 + r + r, this.y - r)
    //   this.ctx.lineTo(this.x + this.textWidth + 4 + r + r, this.y + r)

    //   // 下边框
    //   this.ctx.moveTo(this.x - r - r, this.y + r)
    //   this.ctx.lineTo(this.x + this.textWidth + 4 + r + r, this.y + r)

    //   // 左边框
    //   this.ctx.moveTo(this.x - r - r, this.y - r)
    //   this.ctx.lineTo(this.x - r - r, this.y + r)

    //   // 因为边缘描边存在锯齿，最好指定使用 transparent 填充
    //   this.ctx.setFillStyle(color)
    //   // 对绘画区域填充
    //   this.ctx.fill()

    //   // 因为边缘描边存在锯齿，最好指定使用 transparent 填充
    //   this.ctx.setFillStyle(color)
    //   // 对绘画区域填充
    //   this.ctx.fill()

    //   // 因为边缘描边存在锯齿，最好指定使用 transparent 填充
    //   this.ctx.setStrokeStyle(color)
    //   // 画出当前路径的边框
    //   this.ctx.stroke()

    //   // 裁剪
    //   this.ctx.clip()
    //   this.ctx.restore()
    // }

  }
}

export default Barrage