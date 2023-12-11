import Home from '../views/Home'
import Mine from '../views/Mine'
@Component
export default  struct  TarBar{
  build() {
    Tabs({barPosition: BarPosition.End}){
      TabContent(){
        Home()
      }.tabBar(new BottomTabBarStyle($r('app.media.home'),'Home'))

      TabContent(){
        Column().width('100%').height('100%').backgroundColor(Color.Pink)
      }.tabBar(new BottomTabBarStyle($r('app.media.calendar'),'Calendar'))

      TabContent(){
        Column().width('100%').height('100%').backgroundColor(Color.Pink)
      }.tabBar(new BottomTabBarStyle($r('app.media.data'),'Data'))

      TabContent(){
        Column().width('100%').height('100%').backgroundColor(Color.Pink)
      }.tabBar(new BottomTabBarStyle($r('app.media.add'),'Add'))

      TabContent(){
        Mine()
      }.tabBar(new BottomTabBarStyle($r('app.media.me'),'Mine'))
    }
    .vertical(false)
    .scrollable(true)
    .barMode(BarMode.Fixed)
    .onChange((index:number)=>{
      console.info(index.toString())
    })
    .width('100%')
    .backgroundColor(0xF1F3F5)
  }
}