import Constant from '../common/Constant';
import TextPro from '../views/TextPro'
import TextPlus from './TextPlus';
@Component
export default struct Mine{
  @State sexValue:string='女';
  @State sexList:string[]=['男','女']
  build(){
    Column(){
      Image($r("app.media.avatar"))
        .width(Constant.AVATAR_SIZE)
        .height(Constant.AVATAR_SIZE)
        .alignSelf(ItemAlign.Center)
      Text('个人信息')
        .fontColor(Constant.LOGIN_COLOR)
        .fontSize(26)
        .margin({top:10})
        .alignSelf(ItemAlign.Center)
      TextPro({
        inputImage:$r("app.media.nickname"),
        hintText:'昵称'
      })
      TextPlus({
        textImage:$r('app.media.sex'),
        title:'性别',
        content:$sexValue,
        onItemClick:()=>{
          TextPickerDialog.show({
            range:this.sexList,
            onAccept:(value:TextPickerResult)=>{
              console.info('accept:',JSON.stringify(value))
              this.sexValue=value.value
            },
            onCancel:()=>{
              console.log('取消')
            },
            onChange:()=>{
              console.log('更新')
            }
          })
        }
      })
      TextPro({
        inputImage:$r("app.media.signature"),
        hintText:'个性签名'
      })

    }

  }
}