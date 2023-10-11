import promptAction from '@ohos.promptAction';
import { APP_EXIT_INTERVAL, Style, TIME, TITLE, WEIGHT } from '../constants/Constants';
import { RankData } from '../model/RankData';
import { RankViewModel } from '../model/RankViewModel';
import { ListHeaderComponent } from '../view/ListHeaderComponent';
import { ListItemComponent } from '../view/ListItemComponent';
import { TitleComponent } from '../view/TitleComponent';

let rankModel: RankViewModel = new RankViewModel()

@Entry
@Component
struct Index {
  @State dataSource1: RankData[] = []
  @State dataSource2: RankData[] = []
  // 是否切换RankList的数据
  @State isSwitchDataSource: boolean = true
  // 选中Item的位置
  @State selectedIndex: number = -1
  // 记录点击系统导航返回按钮的时间
  private clickBackTimeRecord: number = 0;

  /**
   * 是否显示Toast
   * @returns
   */
  isShowToast(): boolean {
    return new Date().getTime() - this.clickBackTimeRecord > APP_EXIT_INTERVAL
  }

  /**
   * 页面显示回调 - 生命周期
   */
  aboutToAppear() {
    this.dataSource1 = rankModel.loadRankDataSource1()
    this.dataSource2 = rankModel.loadRankDataSource2()
  }

  /**
   * 页面返回回调
   * @returns
   */
  onBackPress() {
    if (this.isShowToast()) {
      promptAction.showToast({
        message: $r('app.string.prompt_text'), duration: TIME
      })
      this.clickBackTimeRecord = new Date().getTime();
      return false
    }
    return false
  }

  build() {
    Column() {
      //标题栏
      TitleComponent({ isRefreshData: $isSwitchDataSource, title: TITLE })
      //列表头
      ListHeaderComponent({
        paddingValue: {
          left: Style.RANK_PADDING,
          right: Style.RANK_PADDING
        },
        widthValue: Style.CONTENT_WIDTH
      })
        .margin({
          top: Style.HEADER_MARGIN_TOP,
          bottom: Style.HEADER_MARGIN_BOTTOM
        })
      //列表
      this.RankList(Style.CONTENT_WIDTH)
    }
    .backgroundColor($r('app.color.background'))
    .height(WEIGHT)
    .width(WEIGHT)
  }

  /**
   * 配置列表
   * @param widthValue
   */
  @Builder RankList(widthValue: Length) {
    Column() {
      List() {
        ForEach(this.isSwitchDataSource ? this.dataSource1 : this.dataSource2,
          (item: RankData, index?: number) => {
            ListItem() {
              // 加载Item
              ListItemComponent({ index: (Number(index) + 1), name: item.name, vote: item.vote, selectedIndex: $selectedIndex })
            }
          }, (item: RankData) => JSON.stringify(item))
      }
      .width(WEIGHT)
      .height(Style.LIST_HEIGHT)
      .divider({ strokeWidth: Style.STROKE_WIDTH})
    }
    .padding({
      left: Style.RANK_PADDING,
      right: Style.RANK_PADDING
    })
    .borderRadius(Style.BORDER_RADIUS)
    .width(widthValue)
    .alignItems(HorizontalAlign.Center)
    .backgroundColor(Color.White)
  }
}