import 'package:autocar/constant.dart';
import 'package:flutter/material.dart';

class CatogriesCar extends StatelessWidget {
  final String price;
  final String photo;
  final String carname;
  const CatogriesCar({
    super.key,
    required this.price,
    required this.photo,
    required this.carname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      height: 150,
      width: 280,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            fit: BoxFit.cover,
            "$photo",
            width: 150,
            height: 250,
          ),
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "$carname",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: mainColor),
                height: 30,
                width: 80,
                child: Text(
                  '\$ $price',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
