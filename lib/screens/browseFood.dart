import 'package:flutter/material.dart';

class BrowseFoods extends StatelessWidget {
  const BrowseFoods({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: ListView.builder(itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(),
              )
            ],
          );
        }));
  }
}
