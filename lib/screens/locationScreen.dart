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
                    style: TextStyle(
                        fontSize: size.width / 15, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      'Please enter your location or allow access to \n location to find restaurents near you',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: size.width / 25, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          width: 1.0,
                          color: Color.fromRGBO(238, 167, 52, 1),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: size.height / 50,
                            horizontal: size.width / 4.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.paperplane_fill,
                        color: Color.fromRGBO(238, 167, 52, 1),
                      ),
                      label: Text(
                        'Use current location',
                        style: TextStyle(
                          color: Color.fromRGBO(238, 167, 52, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width / 20, right: size.width / 20, top: 20),
            child: Card(
              color: Color.fromRGBO(251, 251, 251, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: size.height / 45,
                  horizontal: size.width / 8,
                ),
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Enter a new Address'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
