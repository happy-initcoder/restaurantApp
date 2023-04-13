import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});
  static const routeName = '/PaymentMethod';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Payment Method',
          style: TextStyle(fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            height: size.height / 4,
            width: size.width,
            child: Image.asset('assets/images/IconCreditcard.png'),
          ),
          Text(
            'Don’t have any card\n :)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
                'It’s seems like you have not added any\n credit or debit card. You may easily add\n card.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1.0,
                  color: Color.fromRGBO(238, 167, 52, 1),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: size.height / 50, horizontal: size.width / 4.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                'ADD CREDIT CARDS',
                style: TextStyle(
                  color: Color.fromRGBO(238, 167, 52, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
