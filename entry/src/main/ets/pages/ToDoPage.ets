/**
 * 待办页面
 */
import router from '@ohos.router';
import ToDoItem from '../view/ToDoItem';
@Entry
@Component
struct ToDoPage {
  private totalTasks: Array<string> = [];
  //接收传递过来的参数
  @State title: Resource = router.getParams()?.['src'];

  aboutToAppear() {
    //数据初始化
    this.totalTasks = [
      "早起睡懒觉",
      "上班路上买早餐",
      "到公司吃早餐",
      "努力工作",
      "偶尔摸鱼",
      "继续努力工作",
      "下班学习ArkTS"
    ]
  }
  build() {
    Column({ space: 18}) {
      //标题
      Text(this.title)
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .fontColor('#ffe08312')
        .width('80%')
        .margin({ top: '24vp', bottom: '12vp' })
        .textAlign(TextAlign.Start)
      //待办列表
      ForEach(this.totalTasks, (item: string) => {
        ToDoItem({ content: item })
      }, (item: string) => JSON.stringify(item))
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.page_background'))
  }
}