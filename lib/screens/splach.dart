import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';

class Splach_screen extends StatefulWidget
{

  @override
  State<Splach_screen> createState() => _Splach_screenState();
}

class _Splach_screenState extends State<Splach_screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10),(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home_Screen(),
    ),
    );
    }
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(

        child: TextLiquidFill(
          text: 'News',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.black,
          textStyle: TextStyle(
            fontSize: 80.0,
            fontWeight: FontWeight.bold,
          ),
          boxHeight: 300.0,
        ),
      ) ,
    );

  }
}