import 'package:flutter/cupertino.dart';

class ScreenUtil {
  ScreenUtil._();

  late double _width;
  late double _height;

  ///Default screen size if none is passed.
  static const Size defaultSize = Size(375, 776);

  //singleton pattern
  static final ScreenUtil _instance = ScreenUtil._();
  factory ScreenUtil() {
    return _instance;
  }

  static void init(
    BuildContext context, {
    Size designSize = defaultSize,
  }) {
    final deviceData = MediaQuery.maybeOf(context);
    final deviceSize = deviceData?.size ?? designSize;

    _instance._height = deviceSize.height;
    _instance._width = deviceSize.width;
  }
}

extension SizesExt on int {
  double w(BuildContext context) {
    final screenWidth = ScreenUtil._instance._width;
    final designWidth = ScreenUtil.defaultSize.width;

    final result = (this * screenWidth) / designWidth;

    return result;
  }

  double h(BuildContext context) {
    final screenHeight = ScreenUtil._instance._height;
    final designHeight = ScreenUtil.defaultSize.height;

    final result = (this * screenHeight) / designHeight;

    return result;
  }
}
