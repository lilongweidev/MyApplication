@Component
export default struct ToDoItem {
  private content?: string
  @State isComplete: boolean = false

  @Builder labelIcon(icon: Resource) {
    Image(icon)
      .objectFit(ImageFit.Contain)
      .width(28)
      .height(28)
      .margin(20)
  }

  build() {
    Row() {
      //图标
      //this.labelIcon($r(this.isComplete ? 'app.media.ic_ok' : 'app.media.ic_default'))
      if (this.isComplete) {
        this.labelIcon($r('app.media.ic_ok'));
      } else {
        this.labelIcon($r('app.media.ic_default'));
      }
      //文字
      Text(this.content)
        .fontSize(20)
        .fontWeight(500)
        .opacity(this.isComplete ? 0.4 : 1) // 不透明度
        .decoration({ type: this.isComplete ? TextDecorationType.LineThrough : TextDecorationType.None })
    }
    .borderRadius(20)
    .backgroundColor($r('app.color.white'))
    .width('93.3%')
    .height(64)
    .onClick(() => {
      this.isComplete = !this.isComplete
    })
  }
}