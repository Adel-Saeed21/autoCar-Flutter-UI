import 'package:autocar/constant.dart';
import 'package:autocar/main.dart';
import 'package:autocar/screen/bookNow.dart';
import 'package:autocar/widget/ContainerDetails.dart';

import 'package:autocar/widget/UpperHome.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class deteils extends StatelessWidget {
  final String carType;
  final String carphoto;
  const deteils({super.key, required this.carType, required this.carphoto});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: Expanded(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Container(
                      color: Colors.white,
                      height: 200,
                      width: 500,
                      alignment: Alignment.topRight,
                      child: Row(
                        children: [
                          UpperHome(
                            x: Icons.grid_view_outlined,
                          ),
                          SizedBox(
                            width: 300,
                          ),
                          UpperHome(
                            x: Icons.arrow_outward_outlined,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: mainColor),
                    height: 622,
                    width: 410,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                "The Car",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20, left: 10),
                              child: Text(
                                "$carType",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => MyApp()));
                                },
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 30,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: mainColor),
                              height: 20,
                              width: 80,
                              child: Text(
                                '\$150',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 150,
                            ),
                            Image.asset(
                              fit: BoxFit.cover,
                              "$carphoto",
                              height: 102,
                              width: 200,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                              color: Colors.white),
                          width: 409,
                          height: 437,
                          child: Column(
                            children: [
                              const SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const ContainerDetails(
                                      NUm: "5",
                                      any: "Seats",
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const ContainerDetails(
                                        NUm: "4", any: "Doors"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    const ContainerDetails(
                                        NUm: "Diesal", any: "(premium)"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Location",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 250,
                                  ),
                                  Text(
                                    "363 m",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                height: 60,
                                width: 380,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Column(
                                        children: [
                                          Text("4952 Leverton Cove Road"),
                                          Text("Roadsboro,MA 05350")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Payment method",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 380,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.payment_outlined,
                                        size: 30,
                                      ),
                                      hintText: "***",
                                      hintStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        borderSide: BorderSide(
                                            color: Colors.black,
                                            style: BorderStyle.solid),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        borderSide: BorderSide(
                                            color: Colors.black,
                                            style: BorderStyle.solid),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => bookNow()));
                                  },
                                  child: Text(
                                    "Book Now",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: mainColor,
                                      fixedSize: Size(200, 50)))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
