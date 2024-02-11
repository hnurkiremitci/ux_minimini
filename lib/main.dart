import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Update theme with the new primary color.
  ThemeHelper().changeTheme('primary');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = ThemeData(
      // Define the default brightness and colors.
      primaryColor: Color(0xFF0066FF), // Updated primary color
      // ... other theme properties, such as:
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Color(0xFF0066FF),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      // ... etc.
    );

    // Pass the theme to the MaterialApp
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'mininifeb8',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.launchScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
