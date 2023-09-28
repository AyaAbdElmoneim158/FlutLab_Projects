import 'package:flutter/material.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/core/app_assets.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/core/consts.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/Widgets/custom_button.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/Widgets/custom_text_form_field.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/credential/sign_up_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // bool _isSigningIn = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            SvgPicture.asset(
              AppAssets.instagramLogo,
              color: AppColors.primaryColor,
            ),
            sizeVer(24),
            CustomTextFormField(
              controller: emailController,
              hintText: "Enter your Email",
              keyboardType: TextInputType.emailAddress,
            ),
            sizeVer(12),
            CustomTextFormField(
              controller: passwordController,
              hintText: "Enter your Password",
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            sizeVer(24),
            const CustomButton(btnText: "Login"),
            Flexible(
              flex: 2,
              child: Container(),
            ),
            const Divider(color: AppColors.secondaryColor),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Don't have and account? ",
                style: TextStyle(color: AppColors.primaryColor),
              ),
              InkWell(
                  onTap: () {
                    // Navigator.pushNamedAndRemoveUntil(
                    //     context, PageConst.signUpPage, (route) => false);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                        (route) => false);
                  },
                  child: const Text(
                    "Sign Up.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ))
            ]),
          ],
        ),
      ),
    );
  }
}
