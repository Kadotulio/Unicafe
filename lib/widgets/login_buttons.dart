import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Color bgColor, textColor;
  final String image, text;
  final double imgsize;

  LoginButton(
      {required this.bgColor, required this.image, required this.imgsize, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: bgColor),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: imgsize,
              width: imgsize,
              child: Image.asset(image),
            ),
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 23,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}