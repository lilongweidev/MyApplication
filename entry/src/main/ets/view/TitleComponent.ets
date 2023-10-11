import AppContext from '@ohos.app.ability.common'
import { FontSize, TitleBarStyle, WEIGHT } from '../constants/Constants'
/**
 * 自定义页面标题组件
 */
@Component
export struct TitleComponent {
  @Link isRefreshData: boolean //是否刷新数据

  @State title: Resource = $r('app.string.title_default')

  build() {
    Row() {
      Row() {
        //返回图标
        Image($r('app.media.ic_public_back'))
          .height(TitleBarStyle.IMAGE_BACK_SIZE)
          .width(TitleBarStyle.IMAGE_BACK_SIZE)
          .margin({ right: TitleBarStyle.IMAGE_BACK_MARGIN_RIGHT })
          .onClick(() => {
            let handler = getContext(this) as AppContext.UIAbilityContext
            handler.terminateSelf() //杀死程序
          })
        //标题文字
        Text(this.title)
          .fontSize(FontSize.LARGE)
      }
      .width(TitleBarStyle.WEIGHT)
      .height(WEIGHT)
      .justifyContent(FlexAlign.Start) //内容左对齐

      Row() {
        //刷新图标
        Image($r('app.media.loading'))
          .height(TitleBarStyle.IMAGE_LOADING_SIZE)
          .width(TitleBarStyle.IMAGE_LOADING_SIZE)
          .onClick(() => {
            this.isRefreshData = !this.isRefreshData //修改刷新状态
          })
      }
      .width(TitleBarStyle.WEIGHT)
      .height(WEIGHT)
      .justifyContent(FlexAlign.End) //内容右对齐
    }
    .width(WEIGHT)
    .padding({ left: TitleBarStyle.BAR_MARGIN_HORIZONTAL,
      right: TitleBarStyle.BAR_MARGIN_HORIZONTAL })
    .margin({ top: TitleBarStyle.BAR_MARGIN_TOP })
    .height(TitleBarStyle.BAR_HEIGHT)
    .justifyContent(FlexAlign.SpaceAround)  // 占满剩余空间
  }
}
