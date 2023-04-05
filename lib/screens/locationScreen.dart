import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              child: Center(
            child: Column(
              children: [
                Text(
                  'Find Restaurents near you',
                  style: TextStyle(fontSize: size.width / 15),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'please enter your location or allow access to \n location to find restaurents near you',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: size.width / 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width / 2.5,
                            vertical: size.height / 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Color.fromRGBO(238, 167, 52, 1),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.paperplane_fill),
                          Text('Use current location'),
                        ],
                      )),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
