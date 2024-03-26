import 'package:autocar/widget/textLogo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LOGOO extends StatelessWidget {
  final String photo;
  final String num;
  final String name;
  const LOGOO({
    super.key,
    required this.photo,
    required this.num,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(
              "$photo",
              height: 100,
              width: 100,
            ),
            textLogo(x: "$num"),
            textLogo(x: "$name"),
          ],
        ),
      ),
    );
  }
}
