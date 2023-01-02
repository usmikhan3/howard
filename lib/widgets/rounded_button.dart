import 'package:flutter/material.dart';
import 'package:howard_app/utils/app_layout.dart';
import 'package:howard_app/utils/app_styles.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: AppLayout.getHeight(50),
      minWidth: AppLayout.getWidth(200),
      onPressed: onPress,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Styles.buttonColor,
      child: Text(
        text,
        style: Styles.headerStyle3.copyWith(color: Colors.white),
      ),
    );
  }
}

class RoundedOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const RoundedOutlineButton({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: AppLayout.getHeight(50),
      minWidth: AppLayout.getWidth(200),
      onPressed: onPress,
      splashColor: Styles.buttonColor,
      hoverColor:  Styles.buttonColor,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Styles.buttonColor)

      ),
      elevation: 0,

      color: Colors.transparent,
      child: Text(
        text,
        style: Styles.headerStyle3.copyWith(color: Styles.buttonColor),
      ),
    );
  }
}
