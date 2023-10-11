import { FontSize, FontWeight, ItemStyle, WEIGHT } from '../constants/Constants';
/**
 * 列表Item组件
 */
@Component
export struct ListItemComponent {
  index: number;
  name: Resource;
  vote: string;
  // 是否改变文字选中文字颜色
  //@State isChange: boolean = false;
  // 选中Item的位置
  @Link selectedIndex: number

  build() {
    Row() {
      //排名
      Column() {
        if (this.isRenderCircleText()) {
          //渲染
          if (this.index !== undefined) {
            this.CircleText(this.index);
          }
        } else {
          //不渲染
          Text(this.index?.toString())
            .lineHeight(ItemStyle.TEXT_LAYOUT_SIZE)
            .textAlign(TextAlign.Center)
            .width(ItemStyle.TEXT_LAYOUT_SIZE)
            .fontWeight(FontWeight.BOLD)
            .fontSize(FontSize.SMALL)
        }
      }
      .width(ItemStyle.LAYOUT_WEIGHT_LEFT)
      .alignItems(HorizontalAlign.Start)
      //种类
      Text(this.name)
        .width(ItemStyle.LAYOUT_WEIGHT_CENTER)
        .fontWeight(FontWeight.BOLDER)
        .fontSize(FontSize.MIDDLE)
        .fontColor(this.selectedIndex == this.index ? ItemStyle.COLOR_BLUE : ItemStyle.COLOR_BLACK) //根据选中状态修改文字颜色
      //得票数
      Text(this.vote)
        .width(ItemStyle.LAYOUT_WEIGHT_RIGHT)
        .fontWeight(FontWeight.BOLD)
        .fontSize(FontSize.SMALL)
        .fontColor(this.selectedIndex == this.index ? ItemStyle.COLOR_BLUE : ItemStyle.COLOR_BLACK) //根据选中状态修改文字颜色
    }
    .height(ItemStyle.BAR_HEIGHT)
    .width(WEIGHT)
    .onClick(() => { //item 点击事件
      this.selectedIndex = this.index
    })
  }


  /**
   * 圆形背景文字
   * @param index
   */
  @Builder CircleText(index: number) {
    Row() {
      Text(index.toString())
        .fontWeight(FontWeight.BOLD)
        .fontSize(FontSize.SMALL)
        .fontColor(Color.White);
    }
    .justifyContent(FlexAlign.Center)
    .borderRadius(ItemStyle.CIRCLE_TEXT_BORDER_RADIUS)
    .size({ width: ItemStyle.CIRCLE_TEXT_SIZE,
      height: ItemStyle.CIRCLE_TEXT_SIZE })
    .backgroundColor($r('app.color.circle_text_background'))
  }

  /**
   * 是否渲染圆圈文本
   * @returns
   */
  isRenderCircleText(): boolean {
    // 列表中第三个元素的渲染圆圈文本
    return this.index === 1 || this.index === 2 || this.index === 3;
  }
}