import 'package:flutter/material.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/core/consts.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String btnText;
  final Color btnColor;

  const CustomButton({
    super.key,
    this.onPressed,
    required this.btnText,
    this.btnColor = AppColors.blueColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.blueColor),
        ),
        child: Text(
          btnText,
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
