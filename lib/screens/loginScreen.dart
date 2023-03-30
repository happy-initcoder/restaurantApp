import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Sign In'),
        ),
      ),
      body: Column(children: [Text('Welcome to Tarang Food Services')]),
    );
  }
}
