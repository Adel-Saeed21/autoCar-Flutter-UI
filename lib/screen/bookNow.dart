import 'package:autocar/constant.dart';
import 'package:autocar/screen/SearchScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bookNow extends StatelessWidget {
  const bookNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 320,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                      },
                      icon: Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
