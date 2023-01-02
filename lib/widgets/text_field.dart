import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool isObscure;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final FormFieldValidator validator;
  final VoidCallback? onTap;
  final bool enabled;

  const CustomTextField({
    Key? key,
    required this.hint,
     this.isObscure = false,
    required this.keyboardType,
    required this.controller,
    required this.textInputAction,
    required this.validator,
    this.onTap,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      onTap: onTap,
      obscureText: isObscure,
      controller: controller,
      style: Styles.textStyle,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Styles.textStyle.copyWith(
          color: Colors.grey.withOpacity(0.7),
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getWidth(10)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Styles.formBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Styles.buttonColor),
        ),
      ),
      validator:validator,
    );
  }
}
