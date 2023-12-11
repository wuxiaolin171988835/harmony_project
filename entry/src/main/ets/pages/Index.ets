import TabBar from '../views/TabBar'
@Entry
@Component
struct Index {

  build() {
    Row() {
      Column() {
        TabBar()
      }
      .width('100%')
    }
    .height('100%')
  }
}