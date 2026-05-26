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
              HomeDailyPrompt(),
              Sizes.l.spacer,
              Text(
                "Daily streak",
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
                "Why journal?",
                style: context.typography.h4,
                textAlign: TextAlign.start,
              ),
              Sizes.s.spacer,
              HomeInfoCard(
                title: "Remembering life",
                subtitle:
                    "Each day has something to be remembered by. Even if only in a sentence, make sure your everyday moments stay remembered.",
                icon: Symbols.mood,
                shape: Shapes.flower,
                shapeColor: context.colors.secondary,
                iconColor: context.colors.onSecondary,
              ),
              HomeInfoCard(
                title: "Self-reflection",
                subtitle:
                    "Putting you thoughts on paper helps you shape the way you think. It highlights your thought patterns, and helps you discover new perspectives.",
                icon: Symbols.self_improvement_rounded,
                shape: Shapes.ghostish,
                shapeColor: context.colors.primary,
                iconColor: context.colors.onPrimary,
              ),
              HomeInfoCard(
                title: "Creativity",
                subtitle:
                    "Getting into a habit of writing can feel difficult. But the more you write, the easier you will find exploration of new ideas and concepts reaching you. Creativity is a skill to be practiced as well, and journaling is a simple way to get you started.",
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
