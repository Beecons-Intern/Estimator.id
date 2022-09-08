import 'package:estimator_id/app/route/route_name.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/login_screen/login_screen.dart';
import '../screens/navigation/navigation.dart';
import '../screens/onboarding_screen/onboarding_screen.dart';
import '../screens/register_screen/register_screen.dart';

class AppPage {
  static final pages = {
    RouteName.onBoardingScreen: (context) => const OnBoardingScreen(),
    RouteName.loginScreen: (context) => const LoginScreen(),
    RouteName.registerScreen: (context) => const RegisterScreen(),
    RouteName.navigation: (context) => const Navigation(),
    RouteName.homeScreen: (context) => const HomeScreen()
  };
}
