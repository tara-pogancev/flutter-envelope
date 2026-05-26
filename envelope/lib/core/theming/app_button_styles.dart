import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:flutter/material.dart';

const double _largeHeight = 58;
const double _largeIconSize = 32;

const double _mediumHeight = 42;
const double _mediumIconSize = 24;

const double _smallHeight = 24;
const double _smallIconSize = 16;

class AppButtonStyles {
  late BuildContext context;

  // LARGE BUTTONS

  ButtonStyle get largeDarkGray => FilledButton.styleFrom(
    backgroundColor: context.colors.inverseSurface,
    foregroundColor: context.colors.onInverseSurface,
    iconSize: _largeIconSize,
    minimumSize: Size.fromHeight(_largeHeight),
    textStyle: context.typography.bodyLarge,
  );

  // MEDIUM BUTTONS

  ButtonStyle get mediumDarkGray => FilledButton.styleFrom(
    backgroundColor: context.colors.inverseSurface,
    foregroundColor: context.colors.onInverseSurface,
    iconSize: _largeIconSize,
    minimumSize: Size.fromHeight(_largeHeight),
    textStyle: context.typography.body,
  );

  ButtonStyle get mediumSecondary => FilledButton.styleFrom(
    backgroundColor: context.colors.secondary,
    foregroundColor: context.colors.onSecondary,
    iconSize: _mediumIconSize,
    minimumSize: Size.fromHeight(_mediumHeight),
    textStyle: context.typography.body,
  );

  ButtonStyle get mediumTeritary => FilledButton.styleFrom(
    backgroundColor: context.colors.tertiary,
    foregroundColor: context.colors.onTertiary,
    iconSize: _mediumIconSize,
    minimumSize: Size.fromHeight(_mediumHeight),
    textStyle: context.typography.body,
  );

  ButtonStyle get mediumGhost => FilledButton.styleFrom(
    backgroundColor: context.colors.onSurfaceVariant.withAlpha(20),
    foregroundColor: context.colors.onSurface,
    iconSize: _mediumIconSize,
    minimumSize: Size.fromHeight(_mediumHeight),
    textStyle: context.typography.body,
  );
}
