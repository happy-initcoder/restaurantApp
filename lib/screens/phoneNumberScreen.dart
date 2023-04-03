import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Get started with Foodly',
              style: TextStyle(
                  fontSize: size.width / 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          Center(
            child: Text(
              'Enter your phone number to use foodly and \n enjoy your food :)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.width / 23,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width / 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'PHONE NUMBER',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: size.width / 20, right: size.width / 20),
            child: TextField(
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: size.height / 20),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width / 2.5, vertical: size.height / 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: Color.fromRGBO(238, 167, 52, 1),
              ),
              onPressed: () {},
              child: Text(
                'SIGN UP',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
