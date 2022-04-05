import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Home_visitors.dart';
import 'package:test_app/home_page.dart';

class welcome_page extends StatefulWidget {
  const welcome_page({Key? key}) : super(key: key);

  @override
  _welcome_pageState createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: AnimatedTextKit(
                pause: Duration(milliseconds: 20),
                  animatedTexts: [
                FadeAnimatedText('Welcome',
                    textStyle: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange)),
                FadeAnimatedText('To',
                    textStyle: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange)),
                FadeAnimatedText('Dispatching',
                    textStyle: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange)),
                FadeAnimatedText('Performance View',
                    textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange)),
              ]),
            ),
            Center(
              child: TextButton(

                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => VerticalCardPagerExample()));
                  },
                  child: Text(
                    'Go to the home page',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black87),
                  )),
            ),
          ],
        ),

    );
  }
}
