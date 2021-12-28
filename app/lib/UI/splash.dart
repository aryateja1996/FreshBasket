import 'dart:async';

import 'package:app/UI/login.dart';
import 'package:app/exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    super.initState();
    Duration duration = const Duration(seconds: 2);
    Timer(duration, (){
      //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (ctx)=> const LoginPage()), (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
           Image(image:  AssetImage('assets/o.png'))
          ],
        ),
      ),
    );
  }
}