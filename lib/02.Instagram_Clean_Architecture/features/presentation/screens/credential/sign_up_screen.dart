import 'package:flutter/material.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/core/app_assets.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/core/consts.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/Widgets/custom_button.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/Widgets/custom_text_form_field.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/Widgets/profile_widget.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/credential/sign_in_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  // bool _isSigningIn = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _bioController.dispose();
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
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: profileWidget(image: null), //   File? _image;
                    ),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -15,
                    child: IconButton(
                      onPressed: () {}, //selectImage,
                      icon: const Icon(
                        Icons.add_a_photo,
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            sizeVer(24),
            CustomTextFormField(
              controller: _usernameController,
              hintText: "Enter your User name",
              keyboardType: TextInputType.text,
            ),
            sizeVer(12),
            CustomTextFormField(
              controller: _emailController,
              hintText: "Enter your Email",
              keyboardType: TextInputType.emailAddress,
            ),
            sizeVer(12),
            CustomTextFormField(
              controller: _bioController,
              hintText: "Enter your Bio",
              keyboardType: TextInputType.text,
            ),
            sizeVer(12),
            CustomTextFormField(
              controller: _passwordController,
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
                "Already have an account? ",
                style: TextStyle(color: AppColors.primaryColor),
              ),
              InkWell(
                  onTap: () {
                    // Navigator.pushNamedAndRemoveUntil(context, PageConst.signInPage, (route) => false);

                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()),
                        (route) => false);
                  },
                  child: const Text(
                    "Sign in.",
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
