import 'package:flutter/material.dart';
import 'package:ib_home/screens/buisnessman/buinessman_signup_screen.dart';
import 'package:ib_home/screens/influencer/influencer_signup_screen.dart';
import 'package:ib_home/screens/choose.dart';
import 'package:ib_home/screens/influencer/signin_auth_ui.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[300], 
      statusBarIconBrightness: Brightness.dark, 
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/buisnessmansignup': (BuildContext context) => BuisnessmanSignupPage(),
        '/influencersignup': (BuildContext context) => InfluencerSignupPage(),
        '/signinAuthUI': (BuildContext context) => SiginAuthUI()
      },
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFE0E0E0)),
      home: Choose(),
    );
  }
}
