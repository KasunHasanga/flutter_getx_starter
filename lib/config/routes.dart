
import 'package:flutter_getx_starter/features/dashboard/dashboard_binding.dart';
import 'package:get/get.dart';

import '../features/dashboard/presentation/pages/dashboard_page.dart';
import '../features/home/home_page_binding.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../features/onboarding/onboard_binding.dart';
import '../features/onboarding/presentation/pages/sign_in_page.dart';
import '../features/onboarding/presentation/pages/splash.dart';
import '../features/profile/presentation/pages/profile_page.dart';
import '../features/profile/profile_binding.dart';


class Routers {
  static final route = [
    GetPage(
        name: SplashPage.routeName,
        page: () => const SplashPage(),
        bindings: [OnBoardingBinding()]),

    GetPage(
        name: SignInPage.routeName,
        page: () => const SignInPage(),
        bindings: [OnBoardingBinding()]),

    //Dashboard
    GetPage(
        name: DashboardPage.routeName,
        page: () => DashboardPage(),
        bindings: [DashboardBinding()]),

    //Home Page
    GetPage(
        name: HomePage.routeName,
        page: () => const HomePage(),
        bindings: [HomePageBinding()]),


    //profile
    GetPage(
        name: ProfilePage.routeName,
        page: () => const ProfilePage(),
        bindings: [ProfileBinding()]),


  ];
}
