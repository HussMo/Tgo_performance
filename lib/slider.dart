import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Home_visitors.dart';
import 'home_page.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({ Key? key }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int _current = 0;
  dynamic _selectedIndex = {};

  CarouselController _carouselController = new CarouselController();

  final List<dynamic> _products = [
    {
      'title': 'Haidy Adel',
      'image': 'images/Haidy.jpeg',
      'description': 'Dispatcher'
    },
    {
      'title': 'Ammar Mohamed',
      'image': 'images/Ammar.jpeg',
      'description': 'Dispatcher'
    },
    {
      'title': 'Ahmed tarek',
      'image': 'images/Ahmed.jpeg',
      'description': 'Dispatcher'
    },
    {
      'title': 'Sarah Samy',
      'image': 'images/Sarah.jpeg',
      'description': 'Dispatcher'
    }
  ];
  int ci = 0;
  int Index= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _selectedIndex.length > 0 ? FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward_ios),
      ) : null,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('Top Performers', style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,

          ),),
        ),
      ),
      body:  DecoratedBox(decoration: const BoxDecoration(
      color: Colors.black,
    ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
                height: 450.0,
                aspectRatio: 16/9,
                viewportFraction: 0.70,
                enlargeCenterPage: true,
                pageSnapping: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }
            ),
            items: _products.map((movie) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_selectedIndex == movie) {
                            _selectedIndex = {};
                          } else {
                            _selectedIndex = movie;
                          }
                        });
                      },
                      child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: _selectedIndex == movie ? Border.all(color: Colors.blue.shade500, width: 3) : null,
                              boxShadow: _selectedIndex == movie ? [
                              BoxShadow(
                                  color: Colors.blue.shade100,
                                  blurRadius: 30,
                                  offset: Offset(0, 10)
                              )
                              ] : [
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 20,
                          offset: Offset(0, 5)
                      )
                      ]
                  ),
                  child: SingleChildScrollView(
                  child: Column(
                  children: [
                  Container(
                  height: 320,
                  margin: EdgeInsets.only(top: 10),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(movie['image'], fit: BoxFit.cover),
                  ),
                  SizedBox(height: 20,),
                  Text(movie['title'], style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 20,),
                  Text(movie['description'], style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600
                  ),),
                  ],
                  ),
                  ),
                  ),
                  );
                },
              );
            }).toList()
        ),
      ),),
      bottomNavigationBar: CurvedNavigationBar(
        index: Index,
        animationDuration: Duration(milliseconds: 400),
        backgroundColor: Colors.black,
        buttonBackgroundColor: Colors.teal,
        items: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductCard()));
              },
              child: Icon((Icons.addchart_sharp))),
          Icon((Icons.search)),
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VerticalCardPagerExample()));
              },
              child: Icon((Icons.home))),
          Icon((Icons.settings)),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => home_page()));
              },
              child: Icon((Icons.person))),
        ],
      ),

    );
  }
}