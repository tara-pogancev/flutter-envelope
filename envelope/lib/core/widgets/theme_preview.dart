import 'package:envelope/core/theming/theming_context_extensions.dart';
import 'package:flutter/material.dart';

class ThemePreview extends StatelessWidget {
  const ThemePreview({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context.colors;

    final pairs = [
      _ColorPair('primary', c.primary, 'onPrimary', c.onPrimary),
      _ColorPair('onPrimary', c.onPrimary, 'primary', c.primary),
      _ColorPair(
        'primaryContainer',
        c.primaryContainer,
        'onPrimaryContainer',
        c.onPrimaryContainer,
      ),
      _ColorPair(
        'onPrimaryContainer',
        c.onPrimaryContainer,
        'primaryContainer',
        c.primaryContainer,
      ),
      _ColorPair(
        'primaryFixed',
        c.primaryFixed,
        'onPrimaryFixed',
        c.onPrimaryFixed,
      ),
      _ColorPair(
        'primaryFixedDim',
        c.primaryFixedDim,
        'onPrimaryFixed',
        c.onPrimaryFixed,
      ),
      _ColorPair(
        'onPrimaryFixed',
        c.onPrimaryFixed,
        'primaryFixed',
        c.primaryFixed,
      ),
      _ColorPair(
        'onPrimaryFixedVariant',
        c.onPrimaryFixedVariant,
        'primaryFixed',
        c.primaryFixed,
      ),
      _ColorPair('secondary', c.secondary, 'onSecondary', c.onSecondary),
      _ColorPair('onSecondary', c.onSecondary, 'secondary', c.secondary),
      _ColorPair(
        'secondaryContainer',
        c.secondaryContainer,
        'onSecondaryContainer',
        c.onSecondaryContainer,
      ),
      _ColorPair(
        'onSecondaryContainer',
        c.onSecondaryContainer,
        'secondaryContainer',
        c.secondaryContainer,
      ),
      _ColorPair(
        'secondaryFixed',
        c.secondaryFixed,
        'onSecondaryFixed',
        c.onSecondaryFixed,
      ),
      _ColorPair(
        'secondaryFixedDim',
        c.secondaryFixedDim,
        'onSecondaryFixed',
        c.onSecondaryFixed,
      ),
      _ColorPair(
        'onSecondaryFixed',
        c.onSecondaryFixed,
        'secondaryFixed',
        c.secondaryFixed,
      ),
      _ColorPair(
        'onSecondaryFixedVariant',
        c.onSecondaryFixedVariant,
        'secondaryFixed',
        c.secondaryFixed,
      ),
      _ColorPair('tertiary', c.tertiary, 'onTertiary', c.onTertiary),
      _ColorPair('onTertiary', c.onTertiary, 'tertiary', c.tertiary),
      _ColorPair(
        'tertiaryContainer',
        c.tertiaryContainer,
        'onTertiaryContainer',
        c.onTertiaryContainer,
      ),
      _ColorPair(
        'onTertiaryContainer',
        c.onTertiaryContainer,
        'tertiaryContainer',
        c.tertiaryContainer,
      ),
      _ColorPair(
        'tertiaryFixed',
        c.tertiaryFixed,
        'onTertiaryFixed',
        c.onTertiaryFixed,
      ),
      _ColorPair(
        'tertiaryFixedDim',
        c.tertiaryFixedDim,
        'onTertiaryFixed',
        c.onTertiaryFixed,
      ),
      _ColorPair(
        'onTertiaryFixed',
        c.onTertiaryFixed,
        'tertiaryFixed',
        c.tertiaryFixed,
      ),
      _ColorPair(
        'onTertiaryFixedVariant',
        c.onTertiaryFixedVariant,
        'tertiaryFixed',
        c.tertiaryFixed,
      ),
      _ColorPair('error', c.error, 'onError', c.onError),
      _ColorPair('onError', c.onError, 'error', c.error),
      _ColorPair(
        'errorContainer',
        c.errorContainer,
        'onErrorContainer',
        c.onErrorContainer,
      ),
      _ColorPair(
        'onErrorContainer',
        c.onErrorContainer,
        'errorContainer',
        c.errorContainer,
      ),
      _ColorPair('surface', c.surface, 'onSurface', c.onSurface),
      _ColorPair('onSurface', c.onSurface, 'surface', c.surface),
      _ColorPair('surfaceDim', c.surfaceDim, 'onSurface', c.onSurface),
      _ColorPair('surfaceBright', c.surfaceBright, 'onSurface', c.onSurface),
      _ColorPair(
        'surfaceContainerLowest',
        c.surfaceContainerLowest,
        'onSurface',
        c.onSurface,
      ),
      _ColorPair(
        'surfaceContainerLow',
        c.surfaceContainerLow,
        'onSurface',
        c.onSurface,
      ),
      _ColorPair(
        'surfaceContainer',
        c.surfaceContainer,
        'onSurface',
        c.onSurface,
      ),
      _ColorPair(
        'surfaceContainerHigh',
        c.surfaceContainerHigh,
        'onSurface',
        c.onSurface,
      ),
      _ColorPair(
        'surfaceContainerHighest',
        c.surfaceContainerHighest,
        'onSurface',
        c.onSurface,
      ),
      _ColorPair(
        'onSurfaceVariant',
        c.onSurfaceVariant,
        'surfaceContainerHighest',
        c.surfaceContainerHighest,
      ),
      _ColorPair(
        'inverseSurface',
        c.inverseSurface,
        'onInverseSurface',
        c.onInverseSurface,
      ),
      _ColorPair(
        'onInverseSurface',
        c.onInverseSurface,
        'inverseSurface',
        c.inverseSurface,
      ),
      _ColorPair('inversePrimary', c.inversePrimary, 'primary', c.primary),
      _ColorPair('outline', c.outline, 'surface', c.surface),
      _ColorPair('outlineVariant', c.outlineVariant, 'onSurface', c.onSurface),
      _ColorPair('shadow', c.shadow, 'surface', c.surface),
      _ColorPair('scrim', c.scrim, 'surface', c.surface),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Theme preview')),
      body: SafeArea(
        child: ListView.builder(
          itemCount: pairs.length,
          itemBuilder: (context, i) {
            final pair = pairs[i];
            return Container(
              width: double.infinity,
              height: 56,
              color: pair.background,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pair.label,
                    style: TextStyle(
                      color: pair.foreground,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '#${pair.background.toARGB32().toRadixString(16).substring(2).toUpperCase()}  (text: ${pair.textLabel})',
                    style: TextStyle(color: pair.foreground, fontSize: 11),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ColorPair {
  final String label;
  final Color background;
  final String textLabel;
  final Color foreground;

  const _ColorPair(
    this.label,
    this.background,
    this.textLabel,
    this.foreground,
  );
}
