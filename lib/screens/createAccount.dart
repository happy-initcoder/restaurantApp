import 'package:flutter/material.dart';
import 'package:restaurantapp/screens/loginScreen.dart';
import 'package:restaurantapp/screens/phoneNumberScreen.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});
  static const routeName = '/CreateAccount';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: const Icon(Icons.arrow_back_ios),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Create Account',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size.width / 25, right: size.width / 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account',
              style: TextStyle(fontSize: size.width / 10),
            ),
            Text(
              'Enter your Name,Email and Password',
              style: TextStyle(fontSize: size.width / 25),
            ),
            Row(
              children: [
                Text(
                  'for sign up.',
                  style: TextStyle(fontSize: size.width / 25),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: Text('Already have account?',
                      style: TextStyle(color: Color.fromRGBO(238, 167, 52, 1))),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Text(
              'FUll NAME',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width / 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height / 25, child: TextField()),
            SizedBox(
              height: size.height / 30,
            ),
            Text(
              'EMAIL ADDRESS',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width / 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height / 25, child: TextField()),
            SizedBox(
              height: size.height / 30,
            ),
            Text(
              'PASSWORD',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width / 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height / 25,
              child: TextField(),
            ),
            SizedBox(
              height: size.height / 25,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width / 3, vertical: size.height / 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Color.fromRGBO(238, 167, 52, 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, PhoneNumberScreen.routeName);
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Text(
                'By Signing up you agree to our Terms \n Conditions & Privacy Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Center(
              child: Text('Or'),
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Image.asset('assets/images/Facebook2.png'),
              ),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Image.asset('assets/images/Google.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
