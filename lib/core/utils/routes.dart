import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mec/features/auth/login_page.dart';
import 'package:mec/features/auth/sign_up_page.dart';
import 'package:mec/features/forget_password/forget_password_flow.dart';
import 'package:mec/features/splash_view/splash_view.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/splash', page: () => const SplashView()),
    GetPage(name: '/login', page: () => const LoginPage()),
    GetPage(name: '/Signup', page: () => const SignUpPage()),
    GetPage(name: '/forgotPassword', page: () => ForgetPasswordFlow()),
  ];
}
