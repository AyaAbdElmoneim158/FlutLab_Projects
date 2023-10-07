import 'package:flutter/material.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/app_asset.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/app_color.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/app_string.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/constance.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hSizeBox(48),
              Text(
                AppString.login,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              hSizeBox(78),
              TextFormField(
                // ToDo: Controller, validation
                decoration: const InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                ),
              ),
              hSizeBox(8),
              TextFormField(
                // ToDo: Controller, validation
                decoration: const InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                ),
              ),
              hSizeBox(14),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppString.forgetPassword,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              hSizeBox(32),
              Container(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(AppString.login),
                ),
                // decoration: BoxDecoration(boxShadow: ),
              ),
              hSizeBox(96),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppString.loginWithSocial,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              hSizeBox(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Image.asset(AppAsset.googleIcon),
                  ),
                  wSizeBox(16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Image.asset(AppAsset.facebookIcon),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
} // repository
