import 'dart:async';
import 'package:assignment/firebase_options.dart';
import 'package:assignment/homescreen.dart';
import 'package:assignment/login1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    Timer(
      const Duration(seconds: 5),
      () {
        if (isLoggedIn) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const Homescreen()), 
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Login1()),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff6318AF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/Logo.svg'),
          const SizedBox(
            height: 5,
          ),
          Text('Craft My Plate',
              style: GoogleFonts.capriola(
                decoration: TextDecoration.none,
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: const Color(0xfff7e5b7),
              )),
          const SizedBox(height: 3),
          Text(
            'You customise, We cater',
            style: GoogleFonts.courgette(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color(0xffD5B67D),
            ),
          ),
        ],
      ),
    );
  }
}

