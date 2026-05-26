import 'package:envelope/core/theming/sizes.dart';
import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:envelope/core/widgets/grainy_page_container.dart';
import 'package:envelope/core/widgets/home_info_card.dart';
import 'package:envelope/features/home/widgets/daily_streak_card.dart';
import 'package:envelope/features/home/widgets/home_daily_question_prompt.dart';
import 'package:envelope/gen/assets.gen.dart';
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
                title: "Mental health",
                subtitle: "Journaling can help you manage stress and anxiety.",
                icon: Symbols.mood,
                shape: Shapes.flower,
              ),
              HomeInfoCard(
                title: "Self-reflection",
                subtitle:
                    "Journaling can help you reflect on your thoughts and feelings.",
                icon: Symbols.self_improvement,
                shape: Shapes.slanted,
                shapeColor: context.colors.secondary,
                iconColor: context.colors.onSecondary,
              ),
              HomeInfoCard(
                title: "Creativity",
                subtitle:
                    "Journaling can help you boost your creativity and problem-solving skills.",
                icon: Symbols.light_mode,
                shape: Shapes.c6_sided_cookie,
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
        CircleAvatar(
          foregroundImage: AssetImage(
            Assets.images.profileImagePlaceholder.path,
          ),
        ),
      ],
    );
  }
}
