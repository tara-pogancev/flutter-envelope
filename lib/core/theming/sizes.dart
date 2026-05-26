import 'package:flutter/widgets.dart';

enum Sizes {
  zero(0),
  xxs(4),
  xs(8),
  s(12),
  m(20),
  l(32),
  xl(48),
  xxl(64),
  xxxl(148),
  infinite(999);

  final double value;
  const Sizes(this.value);

  EdgeInsets get padding => EdgeInsets.all(value);
  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: value);
  EdgeInsets get topPadding => EdgeInsets.only(top: value);
  EdgeInsets get bottomPadding => EdgeInsets.only(bottom: value);
  EdgeInsets get leftPadding => EdgeInsets.only(left: value);
  EdgeInsets get rightPadding => EdgeInsets.only(right: value);

  SizedBox get spacer => SizedBox.square(dimension: value);
  SizedBox get verticalSpacer => SizedBox(height: value);
  SizedBox get horizontalSpacer => SizedBox(width: value);

  BorderSide get borderSide => BorderSide(width: value);
  BorderRadius get borderRadius => BorderRadius.circular(value);
}
