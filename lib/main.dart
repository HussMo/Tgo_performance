import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'Home_visitors.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        buttonColor: Colors.deepOrange,
      ) ,
      debugShowCheckedModeBanner: false,
      home:const VerticalCardPagerExample()
      //Loign_page(),
    );
  }
}
