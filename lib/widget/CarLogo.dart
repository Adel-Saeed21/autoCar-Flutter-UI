import 'package:flutter/material.dart';

class CarLogo extends StatelessWidget {
  final String x;
  const CarLogo({
    super.key,
    required this.x,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      width: 100,
      height: 100,
      child: Image.asset("$x"),
    );
  }
}
