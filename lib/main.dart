import 'package:change_theme/feature/theme/ui/theme_builder.dart';
import 'package:change_theme/feature/theme/domain/theme_controller.dart';
import 'package:change_theme/uikit/theme/theme_data.dart';
import 'package:change_theme/feature/theme/di/theme_inherited.dart';
import 'package:change_theme/feature/theme/data/theme_repository.dart';
import 'package:change_theme/storage/theme/theme_storage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final themeStorage = ThemeStorage(
    prefs: prefs,
  );
  final themeRepository = ThemeRepository(
    themeStorage: themeStorage,
  );
  final themeController = ThemeController(
    themeRepository: themeRepository,
  );

  runApp(App(
    themeController: themeController,
  ));
}

class App extends StatelessWidget {
  final ThemeController themeController;

  const App({
    required this.themeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeInherited(
      themeController: themeController,
      child: ThemeBuilder(
        builder: (_, themeMode) {
          return MaterialApp(
            theme: AppThemeData.lightTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: themeMode,
            home: const Home(),
          );
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                  ThemeInherited.of(context).switchThemeMode();
                },
                child: const Text('Switch theme'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ThemeInherited.of(context).setThemeMode(
                    ThemeMode.light,
                  );
                },
                child: const Text('Set light theme'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ThemeInherited.of(context).setThemeMode(
                    ThemeMode.dark,
                  );
                },
                child: const Text('Set dark theme'),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  ThemeInherited.of(context).setThemeMode(
                    ThemeMode.system,
                  );
                },
                child: const Text('Set system theme'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
