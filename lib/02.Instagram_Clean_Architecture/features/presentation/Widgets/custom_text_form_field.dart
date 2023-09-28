import 'package:flutter/material.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/core/consts.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.fieldKey,
    this.onChanged,
    this.onTap,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.keyboardType,
    this.hintText,
    this.labelText,
    this.helperText,
    this.autofocus = false,
    this.obscureText = false,
    this.maxLines = 1,
  });
  final TextEditingController? controller;
  final Key? fieldKey;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  final TextInputType? keyboardType;
  final bool autofocus;
  final bool obscureText;
  final int? maxLines;
  final String? hintText;
  final String? labelText;
  final String? helperText;

  @override
  State<CustomTextFormField> createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(.35),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextFormField(
        controller: widget.controller,
        key: widget.fieldKey,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        onFieldSubmitted: widget.onFieldSubmitted,
        onSaved: widget.onSaved,
        validator: widget.validator,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: AppColors.secondaryColor),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: widget.obscureText == true
                ? Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: _obscureText == false
                        ? AppColors.blueColor
                        : AppColors.secondaryColor,
                  )
                : const Text(""),
          ),
        ),
        autofocus: widget.autofocus,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText ? _obscureText : false,
        style: const TextStyle(color: AppColors.primaryColor),
      ),
    );
  }
}
