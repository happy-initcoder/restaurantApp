import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Text(
                'DELIVERY TO',
                style: TextStyle(fontSize: 12),
              ),
              Row(
                children: [
                  Text('jodhpur,Raj'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// to be done after