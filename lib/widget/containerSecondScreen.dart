import 'package:autocar/constant.dart';

import 'package:autocar/widget/textLogo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContaineerSec extends StatelessWidget {
  final String namePhoto;
  final String carName;
  final VoidCallback MyFunc;

  const ContaineerSec({
    super.key,
    required this.namePhoto,
    required this.carName,
    required this.MyFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
        width: 300,
        height: 280,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_outward_outlined),
                  textLogo(x: "363 m"),
                  SizedBox(
                    width: 170,
                  ),
                  IconButton(
                      onPressed: MyFunc,
                      icon: Icon(
                        Icons.arrow_circle_right,
                        color: Color(0xff1c214f),
                        size: 40,
                      ))
                ],
              ),
              Image.asset(
                fit: BoxFit.cover,
                "$namePhoto",
                height: 140,
                width: 200,
              ),
              Row(
                children: [
                  textLogo(x: "$carName"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("5 seater"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Automatic"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Diesel")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: mainColor),
                    height: 30,
                    width: 50,
                    child: Text(
                      '\$150',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
