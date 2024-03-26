import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerDetails extends StatelessWidget {
  final String NUm;
  final String any;
  const ContainerDetails({
    super.key,
    required this.NUm,
    required this.any,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: const Color.fromARGB(255, 98, 88, 88),
              style: BorderStyle.solid)),
      height: 80,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$NUm",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "$any",
            style: TextStyle(color: Colors.grey[-100]),
          )
        ],
      ),
    );
  }
}
