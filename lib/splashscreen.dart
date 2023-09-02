import 'dart:async';
//import 'package:assignment/start.dart';
import 'package:flutter/material.dart';
import 'package:instituteassignment/start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StartScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage('assets/images/background.png'),
        //         fit: BoxFit.cover)),

        //color: Color(0xff6318AF),
        //child: ClipPath(
        //clipper: Clip1Clipper(),
        //        child: Container(
        //        color: Colors.purple,
        //   margin: const EdgeInsets.only(bottom: 20),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              // Image.asset(
              //   'assets/images/logo.svg',
              //   color: Colors.white,
              // ),
              const Text(
                "Welcome to My App",
                style: TextStyle(fontSize: 30, color: Color(0xff7D23E0)),
              ),
              const Text(
                "Powered by Flutter",
                style: TextStyle(fontSize: 20, color: Color(0xff7D23E0)),
              )
            ],
          ),
        ),
//          ),
        //),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 650);
    path.lineTo(size.width, size.height);
    path.lineTo(0, 800);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
