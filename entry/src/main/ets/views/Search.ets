import Constant from '../common/Constant'
@Component
export default struct SearchItem{
  @State search: string = ''
  build(){
    Row(){
      TextInput({text:this.search,placeholder:'Search'})
        .placeholderColor(Color.Gray)
        .placeholderFont({size:14,weight:400})
        .caretColor(Color.Blue)
        .width(250)
        .height(40)
        .margin({top:20,left:10,right:18})
        .fontSize(14)
        .fontColor(Color.Black)
        .onChange((value:string)=>{
          this.search = value
        })
      Button('搜索')
        .margin({top:20})
        .fontSize(14)
        .height(40)
        .fontWeight(400)
        .width(60)
        .backgroundColor(Constant.BUTTON_COLOR)
        .onClick(()=>{
          console.log('搜索'+this.search)
        })
    }
  }
}