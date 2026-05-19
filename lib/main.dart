import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/splash_logo_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/login_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/check_email_screen.dart';
import 'screens/successfully_screen.dart';

void main() {
  runApp(const JobSpotApp());
}

class JobSpotApp extends StatelessWidget {
  const JobSpotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobspot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'DM Sans',
        scaffoldBackgroundColor: AppColors.background,
        useMaterial3: true,
      ),
      // Bạn có thể thay đổi initialRoute để xem các màn hình khác nhau:
      // '/', '/onboarding', '/login', '/signup', '/forgot-password', '/check-email', '/success'
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashLogoScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/check-email': (context) => const CheckEmailScreen(),
        '/success': (context) => const SuccessfullyScreen(),
      },
    );
  }
}
