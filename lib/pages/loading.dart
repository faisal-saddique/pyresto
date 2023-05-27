import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pyresto/pages/colors_pallete.dart';
import 'package:pyresto/main.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  ColorsPalletePyresto colors = ColorsPalletePyresto();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colors.brownColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png', // Replace with your actual logo asset path
            width: 100, // Customize the width of the logo image
            height: 100, // Customize the height of the logo image
          ),
          SizedBox(height: 16), // Add some spacing between the logo and app name
          Text(
            'PYRESTO', // Replace with your actual app name
            style: TextStyle(
              color: Color(colors.lightColor),
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              fontFamily: 'Times New Roman',
            ),
          ),
          SizedBox(height: 16), // Add some spacing between the app name and spinner
          SpinKitThreeInOut(
            color: Color(colors.lightColor),
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
