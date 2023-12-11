import Constant from '../common/Constant'
import { ProductData, productList } from '../viewModel/ProductData'
@Component
export default struct ProductList{
  @State data: ProductData[]=productList
  build(){
    List({space:Constant.SPACE_SIZE,initialIndex:0}){
      ForEach(this.data,(item:ProductData)=>{
        ListItem(){
          Row(){
            Column(){
              Image(item.productImg)
                .width(50)
                .height(50)
            }
            .backgroundColor('#F1F5F9')
            .borderRadius(50)
            Column(){
              Text(item.productName)
                .fontWeight(FontWeight.Bold)
                .fontSize(20)
              Text('购买日期：'+item.productDate+' | '+'数量'+item.productNum)
            }
            Column(){
              if (item.productStatus==='过期') {
                Button(''+item.productStatus)
                  .width(50)
                  .height(20)
                  .fontSize(9)
                  .fontColor(Color.Black)
                  .margin({left:10})
                  .backgroundColor(Constant.OVERDUE_COLOR)
              } else {
                Button(item.productStatus)
                  .width(50)
                  .height(20)
                  .fontSize(9)
                  .fontColor(Color.Black)
                  .margin({left:10})
                  .backgroundColor(Constant.FRESH_COLOR)
              }

            }
          }
        }
      },item=>item)
    }
    .listDirection(Axis.Vertical)
    .edgeEffect(EdgeEffect.Spring)
    .onReachEnd(()=>{
      console.log('滑到了底部，后期需要进行下拉加载操作')
    })
    .width('90%')
  }
}