/**
 * 字体大小
 */
export enum FontSize {
  SMALL = 14,
  MIDDLE = 16,
  LARGE = 20,
};

/**
 * 字体粗细
 */
export enum FontWeight {
  BOLD = '400',
  BOLDER = '500',
};

/**
 * 权重是组件大小的全局默认值。
 */
export const WEIGHT = '100%';

/**
 * Toast 出现的时间
 */
export const TIME = 1000;

/**
 * App退出的间隔时间
 */
export const APP_EXIT_INTERVAL: number = 4500;

/**
 * 页面TAG
 */
export const TAG: string = 'Index';

/**
 * 标题内容
 */
export const TITLE: Resource = $r('app.string.title');

class style {
  RANK_PADDING: number = 15;        // 排名填充
  CONTENT_WIDTH: string = '90%';    // 内容的宽度
  BORDER_RADIUS: number = 20;       // 边界半径
  STROKE_WIDTH: number = 1;         // 描边宽度
  HEADER_MARGIN_TOP: number = 20;   // 距离上边距
  HEADER_MARGIN_BOTTOM: number = 15;// 距离下边距
  LIST_HEIGHT: string = '65%';      // List高度
}

/**
 * 页面样式
 */
export const Style: style = {
  RANK_PADDING: 15,
  CONTENT_WIDTH: '90%',
  BORDER_RADIUS: 20,
  STROKE_WIDTH: 1,
  HEADER_MARGIN_TOP: 20,
  HEADER_MARGIN_BOTTOM: 15,
  LIST_HEIGHT: '65%'
};

class titleBarStyle {
  IMAGE_BACK_SIZE: number = 21;         // 后退按钮的图像大小
  IMAGE_BACK_MARGIN_RIGHT: number = 18; // 后退按钮的右边距
  IMAGE_LOADING_SIZE: number = 22;      // 刷新按钮的图像大小
  BAR_HEIGHT: number = 47;              // 标题栏的高度
  BAR_MARGIN_HORIZONTAL: number = 26;   // 标题组件的水平边距
  BAR_MARGIN_TOP: number = 10;          // 标题组件的上边距
  WEIGHT: string = '50%';               // 行布局的权重
}

/**
 * 标题栏样式
 */
export const TitleBarStyle: titleBarStyle = {
  IMAGE_BACK_SIZE: 21,
  IMAGE_BACK_MARGIN_RIGHT: 18,
  IMAGE_LOADING_SIZE: 22,
  BAR_HEIGHT: 47,
  BAR_MARGIN_HORIZONTAL: 26,
  BAR_MARGIN_TOP: 10,
  WEIGHT: '50%',
};

class listHeaderStyle {
  FONT_WEIGHT: number = 400;            // 字体粗细
  LAYOUT_WEIGHT_LEFT: string = '30%';   // 左边的布局权重
  LAYOUT_WEIGHT_CENTER: string = '50%'; // 中间的布局权重
  LAYOUT_WEIGHT_RIGHT: string = '20%';  // 右边的布局权重
}

/**
 * 列表标题样式
 */
export const ListHeaderStyle: listHeaderStyle = {
  FONT_WEIGHT: 400,
  LAYOUT_WEIGHT_LEFT: '30%',
  LAYOUT_WEIGHT_CENTER: '50%',
  LAYOUT_WEIGHT_RIGHT: '20%',
};

class itemStyle {
  TEXT_LAYOUT_SIZE: number = 24;          // 文本的行高
  CIRCLE_TEXT_BORDER_RADIUS: number = 24; // 圆形文本的边框半径
  CIRCLE_TEXT_SIZE: number = 24;          // 圆圈文本的大小
  CIRCLE_TEXT_COLOR_STOP_1: number = 0.5; // 渐变色比例1
  CIRCLE_TEXT_COLOR_STOP_2: number = 1.0; // 渐变色比例2
  BAR_HEIGHT: number = 48;                // item高度
  LAYOUT_WEIGHT_LEFT: string = '30%';     // 左边的布局权重
  LAYOUT_WEIGHT_CENTER: string = '50%';   // 中间的布局权重
  LAYOUT_WEIGHT_RIGHT: string = '20%';    // 右边的布局权重
  BORDER_WIDTH: number = 1;               // 边框宽度
  COLOR_BLUE: Resource = $r('app.color.item_color');     // 文字蓝色
  COLOR_BLACK: Resource = $r('app.color.item_color_black');    // 文字黑色
}

/**
 * 列表Item样式
 */
export const ItemStyle: itemStyle = {
  TEXT_LAYOUT_SIZE: 24,
  CIRCLE_TEXT_BORDER_RADIUS: 24,
  CIRCLE_TEXT_SIZE: 24,
  CIRCLE_TEXT_COLOR_STOP_1: 0.5,
  CIRCLE_TEXT_COLOR_STOP_2: 1.0,
  BAR_HEIGHT: 48,
  LAYOUT_WEIGHT_LEFT: '30%',
  LAYOUT_WEIGHT_CENTER: '50%',
  LAYOUT_WEIGHT_RIGHT: '20%',
  BORDER_WIDTH: 1,
  COLOR_BLUE: $r('app.color.item_color'),
  COLOR_BLACK: $r('app.color.item_color_black')
};