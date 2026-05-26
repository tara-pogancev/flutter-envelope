import 'package:envelope/core/i18n/strings.g.dart';
import 'package:envelope/core/theming/sizes.dart';
import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:envelope/core/widgets/grainy_page_container.dart';
import 'package:envelope/core/widgets/home_info_card.dart';
import 'package:envelope/features/home/widgets/daily_streak_card.dart';
import 'package:envelope/features/home/widgets/home_daily_question_prompt.dart';
import 'package:envelope/features/home/widgets/home_header.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Sizes.xs.value,
            children: [
              HomeHeader(),
              Sizes.m.spacer,
              Text(
                context.t.homePage.pageTitle,
                textAlign: TextAlign.start,
                style: context.typography.h1,
              ),
              Sizes.s.spacer,
              FilledButton.icon(
                onPressed: () {},
                label: Text(context.t.homePage.journalEntry),
                icon: Icon(Symbols.add),
                style: context.buttonStyles.largeDarkGray,
              ),
              HomeDailyPrompt(),
              Sizes.l.spacer,
              Text(
                context.t.homePage.dailyStreak,
                style: context.typography.h4,
                textAlign: TextAlign.start,
              ),
              Sizes.s.spacer,
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
                    return DaliyStreakCard(date: date, isChecked: isChecked);
                  },
                ),
              ),
              Sizes.l.spacer,
              Text(
                context.t.homePage.whyJournal,
                style: context.typography.h4,
                textAlign: TextAlign.start,
              ),
              Sizes.s.spacer,
              HomeInfoCard(
                title: context.t.homePage.rememberingLifeTitle,
                subtitle: context.t.homePage.rememberingLifeSubtitle,
                icon: Symbols.mood,
                shape: Shapes.flower,
                shapeColor: context.colors.secondary,
                iconColor: context.colors.onSecondary,
              ),
              HomeInfoCard(
                title: context.t.homePage.selfReflectionTitle,
                subtitle: context.t.homePage.selfReflectionSubtitle,
                icon: Symbols.self_improvement_rounded,
                shape: Shapes.ghostish,
                shapeColor: context.colors.primary,
                iconColor: context.colors.onPrimary,
              ),
              HomeInfoCard(
                title: context.t.homePage.creativityTitle,
                subtitle: context.t.homePage.creativitySubtitle,
                icon: Symbols.palette,
                shape: Shapes.c9_sided_cookie,
                shapeColor: context.colors.tertiary,
                iconColor: context.colors.onTertiary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
