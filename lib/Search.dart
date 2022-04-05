// ignore: file_names
// ignore: file_names


import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

// ignore: camel_case_types
class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          child: GridView.builder(
              itemCount: 30,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10.0,crossAxisSpacing: 10.0),
              itemBuilder: (context,i){
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Text('Hussien',style: TextStyle(fontSize: 40,color: Colors.red),),
                );
              }),
        )
    );
  }
}
