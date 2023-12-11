import router from '@ohos.router'
import Constant from '../common/Constant'
@Entry
@Component
struct Login{
  @State message: string = 'Please login'
  @State username: string = ''
  @State password: string = ''
  build(){
    Row(){
      Column(){
        Text(this.message)
          .fontColor(Constant.LOGIN_COLOR)
          .fontSize(Constant.LOGIN_SIZE)
          .fontWeight(FontWeight.Bold)
        TextInput({placeholder: 'Username'})
          .margin({top: 20})
          .width(Constant.INPUT_WIDTH)
          .height(Constant.INPUT_HEIGHT)
          .onChange((val)=>{
            this.username = val
          })
          .onSubmit((EnterKeyType)=>{
            console.log(EnterKeyType + '输入法回车键的类型值')
          })
        TextInput({placeholder: 'Password'}).type(InputType.Password)
          .margin({top: 20})
          .width(Constant.INPUT_WIDTH)
          .height(Constant.INPUT_HEIGHT)
          .onChange((val)=>{

            this.password = val
          })
          .onSubmit((EnterKeyType)=>{
            console.log(EnterKeyType + '输入法回车键的类型值')
          })
        Button('Login in')
          .width(Constant.BUTTON_WIDTH)
          .height(Constant.BUTTON_HEIGHT)
          .margin({top: 30})
          .backgroundColor(Constant.BUTTON_COLOR)
          .onClick(()=>{
            router.pushUrl({
              url: 'pages/Index',
              params: {
                username: this.username,
                password: this.password
              }
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}