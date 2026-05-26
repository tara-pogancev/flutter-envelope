import 'package:envelope/core/theming/sizes.dart';
import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_m3shapes/flutter_m3shapes.dart';

class HomeInfoCard extends StatelessWidget {
  const HomeInfoCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.shape,
    this.shapeColor,
    this.iconColor,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Shapes shape;
  final Color? shapeColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = shapeColor ?? context.colors.primaryContainer;
    final foregroundColor = iconColor ?? context.colors.onPrimaryContainer;

    return Container(
      width: double.infinity,
      decoration: context.boxDecorations.whiteRoundedCorners,
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.l.value,
        vertical: Sizes.m.value,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          M3Container(
            shape,
            width: 52,
            height: 52,
            color: backgroundColor,
            child: Center(child: Icon(icon, color: foregroundColor)),
          ),
          Sizes.m.spacer,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: context.typography.h6),
                Sizes.xs.verticalSpacer,
                Text(
                  subtitle,
                  style: context.typography.bodySmall.withColor(
                    context.colors.onSurface.withAlpha(140),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
