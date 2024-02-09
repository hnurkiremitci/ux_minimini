import 'package:flutter/material.dart';
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

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTopStatusBar,
                height: 20.v,
                width: 393.h,
              ),
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
      ),
    );
  }
}
