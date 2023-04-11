import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReferToFriendScreen extends StatelessWidget {
  const ReferToFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Refer to friend',
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
            height: size.height / 3,
            width: size.width,
            child: Image.asset('assets/images/IconCreditcard.png'),
          ),
          Text(
            'Refer a Friend, Get \$10',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
                'Get \$10 in credits when someone sign up \nusing your refer link',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 40,
              width: size.width / 1.5,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.share),
                      Text('\t\thttps://ui8.net/76738b'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
