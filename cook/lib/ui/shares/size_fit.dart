import 'dart:ui';

class SizeFit {
  static double physicalWidth;
  static double physicalHeight;
  static double screenWidth;
  static double screenHeight;
  static double dpr; // device Pixel Ratio
  static double statusHeight;

  static double rpx; 
  static double px;

  static void initialize({double standardSize = 750}) {
    // 1. moblie physic pixel ratio
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;

    // 2. dpr
    dpr = window.devicePixelRatio;

    // 3. width and height
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;

    // 4. tabbar height
    statusHeight = window.padding.top / dpr;

    // 5. rpx
    rpx = screenWidth / 750;
    px = screenWidth / 750 * 2;
  }

  static double setRpx(double size) {
    return rpx * size;
  }
  static double setRx(double size) {
    return px * size;
  }
}