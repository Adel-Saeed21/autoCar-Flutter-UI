import 'package:autocar/constant.dart';
import 'package:autocar/data/carData.dart';
import 'package:autocar/widget/CarLogo.dart';
import 'package:autocar/widget/CatogriesCar.dart';
import 'package:autocar/widget/UpperHome.dart';
import 'package:autocar/widget/textLogo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secColor,
      body: Expanded(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Column(children: [
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UpperHome(
                  x: Icons.grid_view_outlined,
                ),
                SizedBox(
                  width: 170,
                ),
                UpperHome(
                  x: Icons.arrow_outward_outlined,
                )
              ],
            )),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.search, color: Colors.grey, size: 30),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search Cars...",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                SizedBox(
                  width: 140,
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.mic,
                    color: Color(0xff1c214f),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Best Brands",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    CarLogo(
                        x: "images/Mercedes-Benz_C-Class_Car_Mercedes-Benz_A-Class_Maybach_PNG_-_Free_Download-removebg-preview.png"),
                    textLogo(x: "Benz"),
                    SizedBox(
                      height: 40,
                    ),
                    CarLogo(x: "images/Auddi.png"),
                    textLogo(x: "AUDDI")
                  ],
                ),
                Column(
                  children: [
                    CarLogo(x: "images/Toyota.png"),
                    textLogo(x: "Toyota"),
                    SizedBox(
                      height: 40,
                    ),
                    CarLogo(x: "images/Volkswagen.png"),
                    textLogo(x: "Volkswagen"),
                  ],
                ),
                Column(
                  children: [
                    CarLogo(x: "images/Hyundai.png"),
                    textLogo(x: "Hyundai"),
                    SizedBox(
                      height: 40,
                    ),
                    CarLogo(x: "images/Kia.png"),
                    textLogo(x: "KIA"),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: AlignmentDirectional.centerStart,
                height: 30,
                child: Text(
                  "Best Cars",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 230,
              ),
              Icon(
                Icons.filter_alt_outlined,
                size: 30,
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: carData.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, i) => CatogriesCar(
                            price: carData[i].price,
                            photo: carData[i].photo,
                            carname: carData[i].nameCar))),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
