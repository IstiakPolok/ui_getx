import 'package:get/get.dart';

import '../views/auth/forgot_password.dart';
import '../views/auth/login_screen.dart';
import '../views/auth/reset_password.dart';
import '../views/auth/signup_screen.dart';
import '../views/auth/verify_code_screen.dart';
import '../views/language/enable_location.dart';
import '../views/language/select_language.dart';
import '../views/onboarding/onboarding1.dart';
import '../views/onboarding/onboarding2.dart';
import '../views/splash_screen.dart';


class AppRoutes {
  static const String splash = '/';
  static const String onboarding1 = '/onboarding1';
  static const String onboarding2 = '/onboarding2';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String verifyCode = '/verify-code';
  static const String selectLanguage = '/select-language';
  static const String enableLocation = '/enable-location';
}

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.onboarding1, page: () => const OnboardingScreen1()),
    GetPage(name: AppRoutes.onboarding2, page: () => const OnboardingScreen2()),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => SignUpScreen()),
    GetPage(name: AppRoutes.forgotPassword, page: () => const ForgotPasswordScreen()),
    GetPage(name: AppRoutes.resetPassword, page: () => const ResetPasswordScreen()),
    GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCodeScreen()),
    GetPage(name: AppRoutes.selectLanguage, page: () => const SelectLanguageScreen()),
    GetPage(name: AppRoutes.enableLocation, page: () => const EnableLocationScreen()),
  ];
}
