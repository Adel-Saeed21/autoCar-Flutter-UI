import 'package:autocar/constant.dart';
import 'package:autocar/data/carData.dart';
import 'package:autocar/data/logoData.dart';
import 'package:autocar/screen/deteils.dart';
import 'package:autocar/widget/LOGOO.dart';
import 'package:autocar/widget/UpperHome.dart';
import 'package:autocar/widget/containerSecondScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secColor,
        body: SingleChildScrollView(
          child: Expanded(
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
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20, right: 10),
                    child: Text(
                      "Browse Cars",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: carlog.length,
                              shrinkWrap: true,
                              itemBuilder: ((context, i) => LOGOO(
                                  photo: carlog[i].photo,
                                  num: carlog[i].count,
                                  name: carlog[i].name))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Cars",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Data.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, i) => ContaineerSec(
                            namePhoto: Data[i].carimag,
                            carName: Data[i].Carname,
                            MyFunc: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => deteils(
                                      carType: Data[i].Carname,
                                      carphoto: Data[i].carimag)));
                            },
                          ))),
                ])),
          ),
        ));
  }
}
/* () {
                                               
                      },*/ 