import 'package:flutter/material.dart';

import 'app_routes.dart';
import 'constants.dart';
import 'theme.dart';

class StoryForgeApp extends StatelessWidget {
  const StoryForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.generateRoute,
      home: const _WelcomeView(),
    );
  }
}

class _WelcomeView extends StatelessWidget {
  const _WelcomeView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    Icons.auto_awesome,
                    size: 56,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  AppConstants.appName,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  AppConstants.appTagline,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 24),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.explore_outlined),
                  label: const Text('Start Building'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
