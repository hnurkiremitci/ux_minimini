import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mininifeb8/core/app_export.dart';
import 'package:mininifeb8/widgets/custom_elevated_button.dart';
import 'package:mininifeb8/widgets/custom_text_form_field.dart';

class LogInDefaultScreen extends StatefulWidget {
  LogInDefaultScreen({Key? key}) : super(key: key);

  @override
  _LogInDefaultScreenState createState() => _LogInDefaultScreenState();
}

class _LogInDefaultScreenState extends State<LogInDefaultScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = SizeUtils.width;
    double screenHeight = MediaQuery.of(context).size.height; // Define screenHeight here

    return Scaffold(
      body: Container(
        width: screenWidth,
        color: theme.primaryColor, // Assuming your theme has a primaryColor defined
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: screenHeight * 0.2), // Adjust the height as needed to push the logo down.
            SvgPicture.asset(
              ImageConstant.imgLayer1WhiteA700, // Your SVG asset path
              width: screenWidth * 0.5,
            ),
            SizedBox(height: screenHeight * 0.1),
            Expanded(
              child: Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 32), // Provide space from top of the white box
                          Text(
                            "Hoş Geldiniz!  👋",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600, // SemiBold as defined in pubspec.yaml
                              fontSize: 24.0, // Adjust the size as needed
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Lutfen email ve sifrenizi giriniz",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 32),
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "Email",
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 16),
                          CustomTextFormField(
                            controller: passwordController,
                            hintText: "Şifre",
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            obscureText: true,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                // Add your onPressed functionality
                              },
                              child: Text(
                                "Sifremi Unuttum",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold, // Small text size, adjust the value as needed
                              ),
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          CustomElevatedButton(
                            text: "Giris Yapin",
                            onPressed: () {
                              // Add your onPressed functionality
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
