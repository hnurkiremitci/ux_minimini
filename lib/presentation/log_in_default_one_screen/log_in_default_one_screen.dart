import 'package:flutter/material.dart';
import 'package:mininifeb8/core/app_export.dart';
import 'package:mininifeb8/widgets/custom_elevated_button.dart';
import 'package:mininifeb8/widgets/custom_floating_text_field.dart';

class LogInDefaultOneScreen extends StatelessWidget {
  LogInDefaultOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTopStatusBar,
                      height: 20.v,
                      width: 393.h,
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgLayer1WhiteA700,
                      height: 69.v,
                      width: 219.h,
                    ),
                    SizedBox(height: 86.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 46.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL20,
                      ),
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
                          SizedBox(height: 8.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Enter your details to get access to your account",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 36.v),
                          CustomFloatingTextField(
                            controller: emailController,
                            labelText: "E-mail",
                            labelStyle: theme.textTheme.bodyLarge!,
                            hintText: "E-mail",
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 16.v),
                          _buildLoginForm(context),
                          SizedBox(height: 36.v),
                          Text(
                            "Forget password?",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 32.v),
                          CustomElevatedButton(
                            text: "Login",
                          ),
                          SizedBox(height: 22.v),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomFloatingTextField(
          controller: passwordController,
          labelText: "Password",
          labelStyle: theme.textTheme.bodyLarge!,
          hintText: "Password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgVideocamera,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          "* Something went wrong",
          style: CustomTextStyles.bodyLargeOnPrimary,
        ),
      ],
    );
  }
}
