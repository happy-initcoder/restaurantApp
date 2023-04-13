import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:restaurantapp/screens/HomePage.dart';
import 'package:restaurantapp/screens/createAccount.dart';
import 'package:restaurantapp/screens/featuredPartner.dart';
import 'package:restaurantapp/screens/forgetPassword.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = '/LoginScreen';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Sign In',
          style: TextStyle(fontSize: 16),
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
            padding: EdgeInsets.only(top: 10, bottom: 5, left: size.width / 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'EMAIL ADDRESS',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: size.width / 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: size.width / 20, right: size.width / 20),
            child: SizedBox(height: size.height / 25, child: TextField()),
          ),
          SizedBox(
            height: size.height / 30,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: size.width / 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'PASSWORD',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: size.width / 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: size.width / 20, right: size.width / 20),
            child: SizedBox(height: size.height / 25, child: TextField()),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ForgetPassword.routeName);
            },
            child: Text(
              'Forgot password?',
              style: TextStyle(
                color: Color.fromRGBO(238, 167, 52, 1),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width / 2.7, vertical: size.height / 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              primary: Color.fromRGBO(238, 167, 52, 1),
            ),
            onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            child: Text(
              'SIGN IN',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Dont have account?'),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, CreateAccount.routeName);
              },
              child: Text('Create new account',
                  style: TextStyle(color: Color.fromRGBO(238, 167, 52, 1))),
            ),
          ]),
          Text('Or'),
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
    );
  }
}
