import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_app/home_page.dart';
import 'package:test_app/slider.dart';
import 'package:test_app/team_leaders/hussien_roshdy.dart';
import 'package:test_app/team_leaders/sayed_gamal.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class VerticalCardPagerExample extends StatefulWidget {
  const VerticalCardPagerExample({Key? key}) : super(key: key);

  @override
  _VerticalCardPagerExampleState createState() =>
      _VerticalCardPagerExampleState();
}

class _VerticalCardPagerExampleState extends State<VerticalCardPagerExample> {
  final List<Widget> images = [
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset("images/Mahmoud.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset("images/Amr.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset("images/Karim.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset("images/Hala.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset("images/Hany.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset("images/Aly.png"),
    ),
  ];

  final List<String> titles = ['', '', '', '', '', ''];

  int ci = 0;
  int Index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              'Dispatchers Newsletter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            // Important: Remove any padding from the ListView.

            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  UserAccountsDrawerHeader(
                    accountName: Text("Dispatching Team"),
                    accountEmail: Text("clusterleaders@talabat.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Text(
                        "T",
                        style: TextStyle(fontSize: 40.0),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.accessibility_new_rounded),
                title: const Text(
                  "Team Leaders",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sayed_gamal()));
                    },
                    child: Text(
                      "Sayed Gamal",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => hussien_roshdy()));
                    },
                    child: Text(
                      "Hussien Roshdy",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sayed_gamal()));
                    },
                    child: Text(
                      "Nourhan Ahmed",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sayed_gamal()));
                    },
                    child: Text(
                      "Ahmed Refaat",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sayed_gamal()));
                    },
                    child: Text(
                      "Mohamed Sobhy",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sayed_gamal()));
                    },
                    child: Text(
                      "Almoatasem bellah",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sayed_gamal()));
                    },
                    child: Text(
                      "Amal Hagag",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sayed_gamal()));
                    },
                    child: Text(
                      "Shrouk Salah",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: VerticalCardPager(
                  images: images,
                  titles: titles,
                  onPageChanged: (page) {},
                  onSelectedItem: (index) {
                    print(index);
                  },
                )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: Index,
          animationDuration: Duration(milliseconds: 400),
          backgroundColor: Colors.transparent,
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
        ));
  }
}
