import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:giftella/features/authentication/presentation/screens/login_screen.dart';
import 'package:giftella/features/authentication/presentation/screens/signup_screen.dart';
import 'package:giftella/features/authentication/presentation/widgets/auth_gate.dart';
import 'package:giftella/features/dashboard/presentation/dashboard_screen.dart';
import 'package:giftella/utils/theme/theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const AuthGate(),
      routes: {
        '/login': (_) => const LoginScreen(),
        '/signup': (_) => const SignupScreen(),
        '/dashboard': (_) => const DashboardScreen(),
      },
    );
  }
}
