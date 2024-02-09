import 'package:flutter/material.dart';
// Ensure all the custom widgets and exports are correctly referenced
import 'package:mininifeb8/core/app_export.dart';
import 'package:mininifeb8/widgets/custom_elevated_button.dart';
import 'package:mininifeb8/widgets/custom_text_form_field.dart';

class LogInDefaultScreen extends StatefulWidget {
  const LogInDefaultScreen({Key? key}) : super(key: key);

  @override
  _LogInDefaultScreenState createState() => _LogInDefaultScreenState();
}

class _LogInDefaultScreenState extends State<LogInDefaultScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> _mainFormKey = GlobalKey<FormState>(); // Renamed to _mainFormKey

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showWelcomeBackSheet();
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _showWelcomeBackSheet() {
    GlobalKey<FormState> _sheetFormKey = GlobalKey<FormState>(); // New key for the sheet
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 38,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Form(
            key: _sheetFormKey, // Use the new GlobalKey here
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome back 👋",
                    style: TextStyle(
                      // Define the TextStyle that matches your design
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter your details to get access to your account",
                    style: TextStyle(
                      // Define the TextStyle that matches your design
                    ),
                  ),
                ),
                SizedBox(height: 37),
                // Your CustomTextFormField for email
                // Your CustomTextFormField for password with a toggle button for visibility
                SizedBox(height: 35),
                InkWell(
                  onTap: () {
                    // Add navigation or functionality for forgot password
                  },
                  child: Text(
                    "Forget password?",
                    style: TextStyle(
                      // Define the TextStyle that matches your design
                    ),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  child: Text("Login"),
                ),
                SizedBox(height: 67),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              // Replace Spacer() with SizedBox for spacing
              Image.asset(ImageConstant.imgLayer1WhiteA700),
              SizedBox(height: 88),
              // Your container starts here
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 38),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Form(
                  key: _mainFormKey, // Use the renamed _mainFormKey here
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Welcome back 👋",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Enter your details to get access to your account",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 37),
                      // Custom TextFormField should be defined in your project
                      CustomTextFormField(
                        controller: emailController,
                        hintText: "Email",
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 16),
                      CustomTextFormField(
                        controller: passwordController,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                      SizedBox(height: 35),
                      GestureDetector(
                        onTap: () {
                          // Implement forgot password functionality
                        },
                        child: Text(
                          "Forget password?",
                          style: theme.textTheme.subtitle1, // or another style like bodyText2, subtitle2 etc.
                        ),
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () {
                          // Add your login logic here
                        },
                        child: Text("Login"),
                      ),
                      SizedBox(height: 67),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
