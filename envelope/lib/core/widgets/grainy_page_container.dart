import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:envelope/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class GrainyPageContainer extends StatelessWidget {
  const GrainyPageContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: Assets.images.grayGradient.provider(),
              fit: BoxFit.cover,
              color: context.colors.primary,
              colorBlendMode: BlendMode.color,
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.bottomCenter,
                  end: AlignmentGeometry.topCenter,
                  colors: [
                    context.colors.surfaceContainerHighest,
                    context.colors.surfaceContainerHighest,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
