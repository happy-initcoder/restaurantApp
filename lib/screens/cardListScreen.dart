import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 45,
                child: Image.asset('assets/images/Rectangle.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MasterCard'),
                    Text(
                      'Default Payment',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 45,
                child: Image.asset('assets/images/Rectangle1.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Visa'),
                    Text(
                      'Not Default ',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 45,
                child: Image.asset('assets/images/Rectangle2.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Paypal'),
                    Text(
                      'Not Default ',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              )
            ],
          )
        ]),
      ),
    );
  }
}
