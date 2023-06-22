import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 225, left: 120, right: 120, bottom: 170),
            child: Image.asset("assets/whatsapp.png"),
          ),
          const Text(
            "Welcome to Whatsapp",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
