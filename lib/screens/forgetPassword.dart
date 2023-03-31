import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * .05),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: size.width / 10),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * .05),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Enter your email address and we will \nsend you a reset instructions.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .05, top: size.height * 0.02),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'EMAIL ADDRESS',
                  style: TextStyle(color: Colors.grey),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .05, right: size.width * .05),
            child: TextField(),
          ),
          SizedBox(
            height: size.height * .05,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width / 3, vertical: size.height / 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: Color.fromRGBO(238, 167, 52, 1)),
            onPressed: () {},
            child: Text(
              'Reset Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
