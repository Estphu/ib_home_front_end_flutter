import 'package:flutter/material.dart';
import 'package:ib_home/Widgets/neumorphism_btn.dart';
import 'package:ib_home/screens/buisnessman/buisnessman_signin_screen.dart';
import 'package:ib_home/screens/influencer/influencer_signin_screen.dart';

import '../Widgets/neumorphism_btn.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  final String about_influencer =
      "Join IB Home as an influencer and earn money by promoting products on your social media accounts e.g. Instagram, Tiktok.";
  final String about_businessman =
      "Join IB Home as a businessman and grow your business by hiring influencers for your product to promote.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    ' IB Home',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeumorphismBtn(
                    title: "Influencer",
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfluencerSigninScreen(),
                        ),
                      );
                    },
                  ),
                  Container(
                    width: 160,
                    child: Text(
                      about_influencer,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        height: 1.8,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    child: Text(
                      about_businessman,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        height: 1.8,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  NeumorphismBtn(
                    title: "Businessman",
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BuisnessmanSigninScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
