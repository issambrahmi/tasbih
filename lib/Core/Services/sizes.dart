import 'package:flutter/widgets.dart';

class MySize {
  BuildContext context;
  late double _hight;
  late double _width;
  MySize(this.context) {
    _hight = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
  }

  double hight(double h) {
    _hight = _hight - (_hight * h);
    return _hight * h;
  }
  double width(double h) {
    _width = _width - (_width * h);
    return _width * h;
  }
}

