import 'package:dynamic_color/dynamic_color.dart';
import 'package:envelope/core/theming/app_material_theme.dart';
import 'package:envelope/core/widgets/theme_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) =>
          MaterialApp(
            theme: AppMaterialTheme.getThemeDataFromColorScheme(
              colorScheme: lightDynamic,
              brightness: Brightness.light,
            ),
            darkTheme: AppMaterialTheme.getThemeDataFromColorScheme(
              colorScheme: darkDynamic,
              brightness: Brightness.dark,
            ),
            home: ThemePreview(),
          ),
    );
  }
}
