import 'package:envelope/core/theming/sizes.dart';
import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:envelope/core/widgets/grainy_page_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_m3shapes/flutter_m3shapes.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Symbols.book),
      ),
      body: GrainyPageContainer(
        child: SingleChildScrollView(
          padding: Sizes.l.padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: Sizes.xs.value,
            children: [
              _HomeHeader(),
              Sizes.m.spacer,
              Text(
                "Hi, let's write about today. 🖋️",
                textAlign: TextAlign.start,
                style: context.typography.h1,
              ),
              Sizes.s.spacer,
              FilledButton.icon(
                onPressed: () {},
                label: Text("Journal entry"),
                icon: Icon(Symbols.add),
                style: context.buttonStyles.largeDarkGray,
              ),
              _HomeDailyPrompt(),
              Sizes.m.spacer,
              Text(
                "Daily streak",
                style: context.typography.h5,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  separatorBuilder: (_, _) => SizedBox(width: Sizes.xs.value),
                  itemBuilder: (context, index) {
                    final today = DateTime.now();
                    final date = today.subtract(Duration(days: 29 - index));
                    final isChecked = index == 29 ? true : index % 3 != 0;
                    return _DaliyStreakCard(date: date, isChecked: isChecked);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: Sizes.s.value,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: context.boxDecorations.whiteChipLowOpacity,
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.m.value,
            vertical: Sizes.xs.value,
          ),
          child: Row(
            children: [
              Icon(Symbols.event, weight: 400),
              Sizes.s.spacer,
              Text("Thu 21 May, 2026", style: context.typography.body),
            ],
          ),
        ),

        Spacer(),
        CircleAvatar(),
      ],
    );
  }
}

class _HomeDailyPrompt extends StatelessWidget {
  const _HomeDailyPrompt();

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
            "Daily prompt".toUpperCase(),
            style: context.typography.bodySmall.withColor(
              context.colors.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "What fun conversation did you have today?",
            style: context.typography.h3,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 230,
            child: FilledButton.icon(
              onPressed: () {},
              icon: Icon(Symbols.edit),
              label: Text("Answer"),
              style: context.buttonStyles.mediumGhost,
            ),
          ),
        ],
      ),
    );
  }
}

class _DaliyStreakCard extends StatelessWidget {
  const _DaliyStreakCard({required this.date, required this.isChecked});

  final DateTime date;
  final bool isChecked;

  final double _size = 60;

  static const _weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
  String _weekdayLabel(DateTime date) => _weekdays[date.weekday - 1];

  @override
  Widget build(BuildContext context) {
    return M3Container.arch(
      color: isChecked ? context.colors.tertiary : context.colors.surface,
      width: _size,
      height: _size,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            date.day.toString(),
            style: context.typography.bodyLarge
                .withColor(
                  isChecked
                      ? context.colors.onTertiary
                      : context.colors.onSurface,
                )
                .copyWith(height: 1),
          ),
          Text(
            _weekdayLabel(date),
            style: context.typography.bodyExtraSmall
                .withColor(
                  isChecked
                      ? context.colors.tertiaryContainer
                      : context.colors.onTertiaryContainer,
                )
                .copyWith(height: 1),
          ),
        ],
      ),
    );
  }
}
