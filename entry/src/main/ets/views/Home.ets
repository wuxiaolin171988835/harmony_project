import Constant from '../common/Constant'
import SearchItem from '../views/Search'
import ProductList from './ProductList'
@Preview
@Component
export  default  struct Home{
  @State isRefreshing: boolean = false
  build(){
    Column({ space: Constant.SPACE_SIZE}){
      Row(){
        SearchItem()
      }
      Refresh({refreshing: this.isRefreshing,offset:10,friction:50}){
        Text('全部商品列表')
          .fontColor(Constant.LOGIN_COLOR)
          .fontSize(Constant.LOGIN_SIZE)
          .fontWeight(FontWeight.Bold)
      }
      .onStateChange((refreshStatus:RefreshStatus)=>{
        console.log('刷新状态变更')
      })
      .onRefreshing(()=>{
        setTimeout(()=>{
          this.isRefreshing = false
        },1000)
      })
      ProductList()
    }
    .backgroundColor(0xDCDCDC)
    .padding({top:5})
    .width('100%')
    .height('100%')
  }
}