import 'package:envelope/core/theming/envelope_ui.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

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
