import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text('Sign In'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Welcome to Tamang Food Services',
              style: TextStyle(fontSize: size.width / 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 10),
            child: Text(
              'Enter your Phone number or Email address for sign in. Enjoy your food :)',
              style: TextStyle(fontSize: size.width / 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.height * .02, right: size.height * .02),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'EMAIL ADDRESS'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.height * .02, right: size.height * .02),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'PASSWORD'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Forgot password?'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width / 3, vertical: size.height / 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              primary: Color.fromRGBO(238, 167, 52, 1),
            ),
            onPressed: () {},
            child: Text(
              'SIGN IN',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(children: [
            Text('Dont have account?'),
            TextButton(
              onPressed: () {},
              child: Text('Create new account'),
            ),
          ]),
          Text('Or'),
          SizedBox(
            height: size.height * .07,
            width: size.width * .9,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width / 4, vertical: size.height / 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: Color.fromRGBO(57, 89, 152, 1),
              ),
              onPressed: () {},
              child: Text(
                'Connect with facebook',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          SizedBox(
            height: size.height * .07,
            width: size.width * .9,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width / 4, vertical: size.height / 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: Color.fromRGBO(66, 133, 244, 1),
              ),
              onPressed: () {},
              child: Text(
                'Connect with google',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
