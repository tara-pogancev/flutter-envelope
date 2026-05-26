import 'package:envelope/core/theming/sizes.dart';
import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:flutter/material.dart';

class AppBoxDecorations {
  late BuildContext context;

  BoxDecoration get whiteRoundedCorners => BoxDecoration(
    color: context.colors.surface,
    borderRadius: Sizes.m.borderRadius,
  );

  BoxDecoration get whiteChipLowOpacity => BoxDecoration(
    color: context.colors.surface.withAlpha(120),
    borderRadius: Sizes.infinite.borderRadius,
  );
}
