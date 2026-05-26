import 'package:envelope/core/theming/app_box_decorations.dart';
import 'package:envelope/core/theming/app_button_styles.dart';
import 'package:envelope/core/theming/typography.dart';
import 'package:flutter/material.dart';

extension ThemingContextExtensions on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  AppTypography get typography => AppTypography()..context = this;
  AppBoxDecorations get boxDecorations => AppBoxDecorations()..context = this;
  AppButtonStyles get buttonStyles => AppButtonStyles()..context = this;
}

extension TextStyleX on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle bold() => copyWith(fontWeight: FontWeight.w600);
}
