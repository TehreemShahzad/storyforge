import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String splash = '/splash';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const _HomePlaceholder(),
        );
      case splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const _SplashPlaceholder(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const _NotFoundPage(),
        );
    }
  }
}

class _HomePlaceholder extends StatelessWidget {
  const _HomePlaceholder();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StoryForge Lite')),
      body: const Center(child: Text('Home route is ready for future screens.')),
    );
  }
}

class _SplashPlaceholder extends StatelessWidget {
  const _SplashPlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splash route placeholder')),
    );
  }
}

class _NotFoundPage extends StatelessWidget {
  const _NotFoundPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page not found')),
      body: const Center(child: Text('The requested page does not exist.')),
    );
  }
}
