import 'package:flutter/material.dart';

class textLogo extends StatelessWidget {
  final String x;
  const textLogo({
    super.key,
    required this.x,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$x",
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}
