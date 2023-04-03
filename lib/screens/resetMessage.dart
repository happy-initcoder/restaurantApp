import 'package:flutter/material.dart';

class ResetEmailScreen extends StatelessWidget {
  const ResetEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Forgot Password',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * .05),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Reset email sent',
                style: TextStyle(fontSize: size.width / 10),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * .05),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'We have sent instruction email to',
                style: TextStyle(fontSize: size.width / 25),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * .05),
            child: Row(
              children: [
                Text(
                  'harshpanwar@gmail.com',
                  style: TextStyle(fontSize: size.width / 25),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Having Problem?',
                    style: TextStyle(
                      color: Color.fromRGBO(238, 167, 52, 1),
                    ),
                  ),
                ),
              ],
            ),
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
              primary: Color.fromRGBO(238, 167, 52, 1),
            ),
            onPressed: () {},
            child: Text(
              'SEND AGAIN',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: size.height * .1,
          ),
          Image.asset('assets/images/coffee.png')
        ],
      ),
    );
  }
}
