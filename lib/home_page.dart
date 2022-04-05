

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:test_app/Home_visitors.dart';


class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  CollectionReference noteRef = FirebaseFirestore.instance.collection('Hussien Roshdy');
  int ci = 0;
 int Index= 4;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Performance View',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.white,
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //
      //     children:  <Widget>[
      //        Column(
      //          mainAxisAlignment: MainAxisAlignment.center,
      //         children: const [
      //           UserAccountsDrawerHeader(
      //             accountName: Text("Dispatching Team"),
      //             accountEmail: Text("clusterleaders@talabat.com"),
      //             currentAccountPicture: CircleAvatar(
      //               backgroundColor: Colors.orange,
      //               child: Text(
      //                 "T",
      //                 style: TextStyle(fontSize: 40.0),
      //               ),
      //             ),
      //           ),
      //         ],
      //
      //       ),
      //       ExpansionTile(
      //         leading: Icon(Icons.accessibility_new_rounded),
      //         title: const Text(
      //           "Team Leaders",
      //           style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black87),
      //         ),
      //         children:<Widget> [
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Sayed Gamal",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>hussien_roshdy()));},
      //             child: Text(
      //               "Hussien Roshdy",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Nourhan Ahmed",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Ahmed Refaat",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Mohamed Sobhy",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Almoatasem bellah",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Amal Hagag",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Shrouk Salah",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //         ],),
      //
      //
      //     ],
      //   ),
      // ),
      body:  DecoratedBox(decoration: const BoxDecoration(
        color: Colors.black,
    // image: DecorationImage(image: AssetImage("images/back.jpg"), fit: BoxFit.cover),
    ),
      child:StreamBuilder<QuerySnapshot>(
            stream: noteRef.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text('No Data'));
              }
              if(snapshot.connectionState == ConnectionState.waiting){
                return const Text('loading .....');
              }
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, i) {
                        dynamic store = snapshot.data!.docs[i].data();
                        return FlipCard(

                          direction: FlipDirection.HORIZONTAL, // default
                          front: Center(
                            child: Container(
                              decoration:  BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(20),
                                image:  DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/dark.jfif')),

                              ),
                              child: Center(child: Text('${snapshot.data!.docs[i].id}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Colors.white),)),
                            ),
                          ),
                          back: Container(
                            decoration:  BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20),
                              image:  DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/dark.jfif')),

                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // ignore: predfer_const_constructors
                                Text('AHT is ${store!["0"][0]}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.white),),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text('Quality is ${store!["0"][1]}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.white),),
                              ],
                            ),
                          ),
                        );
                      }),
                );
              }
              return Text('Hi');

            }),),//
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
        ),


      /*
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ci,
        onTap: (index) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductCard() ));
        },
        backgroundColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            backgroundColor: Colors.deepOrange,
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'mail',
            icon: Icon(Icons.mail),
          ),
          BottomNavigationBarItem(label: 'print', icon: Icon(Icons.print)),
          BottomNavigationBarItem(
              label: 'account', icon: Icon(Icons.account_balance)),
        ],
      ),
*/
    );


  }

}

// class SearchData extends SearchDelegate {
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = '';
//           },
//           icon: Icon(Icons.close)),
//     ];
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//         icon: Icon(Icons.arrow_back_sharp));
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     return Text('Search here');
//
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return search();
//   }
// }









