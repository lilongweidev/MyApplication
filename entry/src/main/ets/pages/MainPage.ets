import router from '@ohos.router'

@Entry
@Component
struct MainPage {
  @State message: string = 'Hello Harmony'

  build() {
    Row() {
      Column({space: 20}) {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('水果排行页面')
          .width('60%')
          .height(60)
          .onClick(() => {
            // 跳转页面
            router.pushUrl({
              url: 'pages/Index',
            })
          })
        Button('待办页面')
          .width('60%')
          .height(60)
          .onClick(() => {
            // 跳转页面并传递参数
            router.pushUrl({
              url: 'pages/ToDoPage',
              //参数
              params: {
                src: $r('app.string.todo_page_title'),
              }
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}