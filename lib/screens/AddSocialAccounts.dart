import 'package:flutter/material.dart';

class AddSocialAccounts extends StatelessWidget {
  const AddSocialAccounts({super.key});
  static const routeName = '/AddSocialAccounts';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add social accounts',
          style: TextStyle(fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            'Add social accounts',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            'Add your social accounts for more security.\n You will go directly to their site.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: InkWell(
            onTap: () {},
            child: Image.asset('assets/images/Facebook2.png'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: InkWell(
            onTap: () {},
            child: Image.asset('assets/images/Google.png'),
          ),
        )
      ]),
    );
  }
}
