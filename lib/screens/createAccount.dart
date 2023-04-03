import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
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
                  onPressed: () {},
                  child: Text('Already have account?'),
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
                onPressed: () {},
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
