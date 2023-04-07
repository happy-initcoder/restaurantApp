import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:restaurantapp/screens/phoneVarificationScreen.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});
  static const routeName = '/PhoneNumberScreen';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Login page',
          style: TextStyle(fontSize: 16),
        ),
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
          Row(
            children: [
              Container(
                width: size.width / 3,
                child: CountryCodePicker(
                  initialSelection: 'IT',
                  favorite: ['+39', 'FR'],
                ),
              ),
              Container(
                width: size.width / 1.8,
                child: TextField(
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
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
              onPressed: () {
                Navigator.pushNamed(context, phoneVarificationScreen.routeName);
              },
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
