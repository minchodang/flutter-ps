import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_app/login.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.image,
    required this.text,
    required this.color,
    required this.radius,
    required this.onPressed,
  }) : super(key: key);
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('image/glogo.png'),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
