import 'package:envelope/features/entry/entry_page.dart';
import 'package:envelope/features/entry/new_entry_page.dart';
import 'package:envelope/features/home/home_page.dart';
import 'package:go_router/go_router.dart';

enum Routes {
  home('/'),
  entry('/entry'),
  newEntry('/entry/new');

  final String path;
  const Routes(this.path);
}

final appRouter = GoRouter(
  initialLocation: Routes.home.path,
  routes: [
    GoRoute(
      path: Routes.home.path,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: Routes.entry.path,
      builder: (context, state) => const EntryPage(),
    ),
    GoRoute(
      path: Routes.newEntry.path,
      builder: (context, state) => const NewEntryPage(),
    ),
  ],
);
