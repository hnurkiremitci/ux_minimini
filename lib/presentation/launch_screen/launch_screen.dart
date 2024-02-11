import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mininifeb8/core/app_export.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Simulate a delay of 2 seconds before navigating to the login screen
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the login screen
      Navigator.pushNamed(context, AppRoutes.logInDefaultScreen);
    });

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar color to transparent
      statusBarIconBrightness: Brightness.light, // Status bar icons' color
    ));

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor, // Set the primary color as background color
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Spacer(
              flex: 45,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgLayer1,
              height: 158.v,
              width: 239.h,
            ),
            Spacer(
              flex: 54,
            ),
          ],
        ),
      ),
    );
  }
}