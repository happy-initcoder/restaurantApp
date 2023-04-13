import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrowseFoods extends StatelessWidget {
  const BrowseFoods({super.key});
  static const routeName = '/BrowseFoods';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List images = [
      'assets/images/food.png',
      'assets/images/food1.png',
      'assets/images/food2.png',
      'assets/images/food3.png'
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Browse Foods',
          style: TextStyle(fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: size.height / 4,
                  width: size.width / 1.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width / 15),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Rich Table',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width / 15),
                child: Row(
                  children: [
                    Text(
                      '\$\$   \t',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Chinese   \t.\t',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'American   \t.\t',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Deshi food   \t.\t',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: size.width / 15, bottom: 15, top: 10),
                child: Row(
                  children: [
                    Text(
                      '4.3   \t\t\t',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.star,
                        size: 20, color: Color.fromRGBO(238, 167, 52, 1)),
                    Text(
                      '200+Rating   \t\t\t',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(CupertinoIcons.clock_fill,
                        size: 20, color: Colors.grey),
                    Text(
                      '25 min   \t\t\t',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(CupertinoIcons.money_dollar_circle,
                        size: 20, color: Colors.grey),
                    Text(
                      'Free',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
