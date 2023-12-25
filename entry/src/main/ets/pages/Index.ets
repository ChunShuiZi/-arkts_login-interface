import router from '@ohos.router';
@Entry
@Component
struct Index {
  scroller: Scroller = new Scroller();
  build() {
    Row() {
      Column() {
        Row() {
          Column()  {
            Text('添加一个账号')
              .fontSize(30)
              .fontColor(Color.White)
              .fontWeight(FontWeight.Normal)
          }.width('100%')
        }.backgroundColor(Color.Orange).height('10%')
        Row() {
          Column() {Text('\n\n\n')
            Image($r('app.media.icon')).height(250).width(250).borderRadius(15)
            Text('\n\n\n\n\n\n')
            Text('  欢迎登录  ')
              .fontColor(Color.Orange)
              .fontSize(30)
              .fontWeight(FontWeight.Normal)
            Text('\n\n\n\n\n\n\n\n\n')
          }
        }.backgroundColor(Color.White).height('50%')
        Row() {
          Text('账号：')
          TextInput({placeholder:'Account'}).width(260).type(InputType.Normal)
        }.height('5%')
        Row() {
          Text('密码：')
          TextInput({placeholder:'Password'}).width(260).type(InputType.Password)
        }.height('10%')
        Row() {
          Toggle({ type: ToggleType.Checkbox, isOn: false })
            .selectedColor(Color.Orange)
          Text('我已阅读并同意《用户协议》和《隐私保护指引》').fontSize(13)
        }.height('10%')
        Row()
        {
          Button('登录', { type: ButtonType.Normal, stateEffect: true })
            .borderRadius(10)
            .backgroundColor(Color.Orange)
            .width(100)
            .onClick(()=>{router.pushUrl({url:'pages/Index'})})
          Text('            ')
          Button('注册', { type: ButtonType.Normal, stateEffect: true })
            .borderRadius(10)
            .backgroundColor(Color.Yellow)
            .fontColor(Color.Orange)
            .width(100)
            .onClick(()=>{router.pushUrl({url:'pages/register'})})
        }.height('10%')
        Row() {
          Text('手机号登录').fontSize(13)
          Text('    |    ')
          Text('其他方式登录').fontSize(13)
        }.height('5%')
      }
    }
  }
}