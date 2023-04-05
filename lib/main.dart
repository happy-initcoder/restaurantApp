import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurantapp/screens/createAccount.dart';
import 'package:restaurantapp/screens/forgetPassword.dart';
import 'package:restaurantapp/screens/getStartedpage.dart';
import 'package:restaurantapp/screens/locationScreen.dart';
import 'package:restaurantapp/screens/loginScreen.dart';
import 'package:restaurantapp/screens/phoneNumberScreen.dart';
import 'package:restaurantapp/screens/phoneVarificationScreen.dart';
import 'package:restaurantapp/screens/resetMessage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(),
        useMaterial3: true,
      ),
      home: LocationScreen(),
    );
  }
}
