import 'package:autocar/main.dart';
import 'package:flutter/material.dart';

class UpperHome extends StatelessWidget {
  final IconData x;
  const UpperHome({
    super.key,
    required this.x,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        height: 40,
        width: 40,
        child: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyApp()));
          },
          icon: Icon(
            x,
            color: Colors.black,
            size: 30,
          ),
        ));
  }
}
