import 'package:flutter/material.dart';
import 'package:mininifeb8/presentation/launch_screen/launch_screen.dart';
import 'package:mininifeb8/presentation/log_in_default_screen/log_in_default_screen.dart';
import 'package:mininifeb8/presentation/log_in_default_one_screen/log_in_default_one_screen.dart';
import 'package:mininifeb8/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String launchScreen = '/launch_screen';

  static const String logInDefaultScreen = '/log_in_default_screen';

  static const String logInDefaultOneScreen = '/log_in_default_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    launchScreen: (context) => LaunchScreen(),
    logInDefaultScreen: (context) => LogInDefaultScreen(),
    logInDefaultOneScreen: (context) => LogInDefaultOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
