import 'package:flutter/material.dart';

class phoneVarificationScreen extends StatelessWidget {
  const phoneVarificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to Foodly'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Verify phone number',
                    style: TextStyle(
                      fontSize: size.width / 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'Enter the 4-digit code sent you at',
                      style: TextStyle(
                        fontSize: size.width / 22,
                      ),
                    ),
                  ),
                  Text(
                    '+919829391929',
                    style: TextStyle(
                      fontSize: size.width / 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width / 10, right: size.width / 10, top: 20),
            child: Row(
              children: <Widget>[
                new Flexible(
                  child: new TextField(
                      decoration:
                          InputDecoration(contentPadding: EdgeInsets.all(10))),
                ),
                SizedBox(
                  width: 20.0,
                ),
                new Flexible(
                  child: new TextField(
                      decoration:
                          InputDecoration(contentPadding: EdgeInsets.all(10))),
                ),
                SizedBox(
                  width: 20.0,
                ),
                new Flexible(
                  child: new TextField(
                      decoration:
                          InputDecoration(contentPadding: EdgeInsets.all(10))),
                ),
                SizedBox(
                  width: 20.0,
                ),
                new Flexible(
                  child: new TextField(
                      decoration:
                          InputDecoration(contentPadding: EdgeInsets.all(10))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          ElevatedButton(
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
              'Continue',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't recive code?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Resend Code',
                      style: TextStyle(color: Color.fromRGBO(238, 167, 52, 1))),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'By Signing up you agree to our Terms \n Conditions & Privacy Policy.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: size.width / 20, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
