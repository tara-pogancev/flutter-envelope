import 'package:envelope/core/i18n/strings.g.dart';
import 'package:envelope/core/theming/sizes.dart';
import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeDailyPrompt extends StatelessWidget {
  const HomeDailyPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: context.boxDecorations.whiteRoundedCorners,
      padding: Sizes.l.padding,
      child: Column(
        spacing: Sizes.l.value,
        children: [
          Text(
            context.t.homeDailyPrompt.dailyPrompt.toUpperCase(),
            style: context.typography.bodySmall.withColor(
              context.colors.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            context.t.homeDailyPrompt.question,
            style: context.typography.h3,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 230,
            child: FilledButton.icon(
              onPressed: () {},
              icon: Icon(Symbols.edit),
              label: Text(context.t.homeDailyPrompt.answer),
              style: context.buttonStyles.mediumGhost,
            ),
          ),
        ],
      ),
    );
  }
}
