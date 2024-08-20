import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/contants/styles.dart';
import 'package:medical_app/features/main_page.dart';
import 'package:medical_app/info/data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          
          width: 200,
          height: 200,
          child: SvgPicture.asset(splashImageSvg, semanticsLabel: 'Acme Logo')),
          const SizedBox(height: 20,),
         Text("Medical App", style: largeText.copyWith(fontWeight: FontWeight.bold),)
      ],
    )));
  }
}
