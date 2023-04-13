import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurantapp/screens/AccountSettings.dart';
import 'package:restaurantapp/screens/AddSocialAccounts.dart';
import 'package:restaurantapp/screens/RefertoFriend.dart';
import 'package:restaurantapp/screens/SingleRestaurant.dart';
import 'package:restaurantapp/screens/browseFood.dart';
import 'package:restaurantapp/screens/cardListScreen.dart';
import 'package:restaurantapp/screens/createAccount.dart';
import 'package:restaurantapp/screens/featuredPartner.dart';
import 'package:restaurantapp/screens/forgetPassword.dart';
import 'package:restaurantapp/screens/getStartedpage.dart';
import 'package:restaurantapp/screens/locationScreen.dart';
import 'package:restaurantapp/screens/loginScreen.dart';
import 'package:restaurantapp/screens/HomePage.dart';
import 'package:restaurantapp/screens/paymentMethod.dart';
import 'package:restaurantapp/screens/phoneNumberScreen.dart';
import 'package:restaurantapp/screens/phoneVarificationScreen.dart';
import 'package:restaurantapp/screens/resetMessage.dart';
import 'package:restaurantapp/screens/searchResults.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
        useMaterial3: true,
      ),
      home: GetStartedPage(),
      routes: {
        CreateAccount.routeName: (ctx) => CreateAccount(),
        FeaturedPartnersScreen.routeName: (ctx) => FeaturedPartnersScreen(),
        ForgetPassword.routeName: (ctx) => ForgetPassword(),
        GetStartedPage.routeName: (ctx) => GetStartedPage(),
        HomePage.routeName: (ctx) => HomePage(),
        LocationScreen.routeName: (ctx) => LocationScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        phoneVarificationScreen.routeName: (ctx) => phoneVarificationScreen(),
        PhoneNumberScreen.routeName: (ctx) => PhoneNumberScreen(),
        ResetEmailScreen.routeName: (ctx) => ResetEmailScreen(),
        AccountSettigs.routeName: (ctx) => AccountSettigs(),
        AddSocialAccounts.routeName: (ctx) => AddSocialAccounts(),
        BrowseFoods.routeName: (ctx) => BrowseFoods(),
        CardList.routeName: (ctx) => CardList(),
        PaymentMethod.routeName: (ctx) => PaymentMethod(),
        ReferToFriendScreen.routeName: (ctx) => ReferToFriendScreen(),
        SearchResults.routeName: (ctx) => SearchResults(),
      },
    );
  }
}
