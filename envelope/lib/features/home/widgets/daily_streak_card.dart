import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_m3shapes/flutter_m3shapes.dart';

class DaliyStreakCard extends StatelessWidget {
  const DaliyStreakCard({
    super.key,
    required this.date,
    required this.isChecked,
  });

  final DateTime date;
  final bool isChecked;

  final double _size = 60;

  static const _weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
  String _weekdayLabel(DateTime date) => _weekdays[date.weekday - 1];

  @override
  Widget build(BuildContext context) {
    if (isChecked) {
      return M3Container.arch(
        color: context.colors.tertiary,
        width: _size,
        height: _size,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              date.day.toString(),
              style: context.typography.bodyLarge
                  .withColor(context.colors.onTertiary)
                  .copyWith(height: 1),
            ),
            Text(
              _weekdayLabel(date),
              style: context.typography.bodyExtraSmall
                  .withColor(context.colors.onTertiary.withAlpha(150))
                  .copyWith(height: 1),
            ),
          ],
        ),
      );
    }

    return M3Container.arch(
      color: context.colors.tertiary,
      width: _size,
      height: _size,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: M3Container.arch(
          color: context.colors.surface,
          width: _size,
          height: _size,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                date.day.toString(),
                style: context.typography.bodyLarge
                    .withColor(context.colors.onSurface)
                    .copyWith(height: 1),
              ),
              Text(
                _weekdayLabel(date),
                style: context.typography.bodyExtraSmall
                    .withColor(context.colors.onSurface.withAlpha(150))
                    .copyWith(height: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
