
import 'package:bottom_navigation/five.dart';
import 'package:bottom_navigation/four.dart';
import 'package:bottom_navigation/one.dart';
import 'package:bottom_navigation/three.dart';
import 'package:bottom_navigation/two.dart';
import 'package:flutter/material.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );

  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _selindex = 0;



  final pages = [
    const One(),
    const Two(),
    const Three(),
    const Four(),
    const Five(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('My Chart'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 50,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back ),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ), //IconButton

        ),




        bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          currentIndex: _selindex,
          items: const <BottomNavigationBarItem> [

            BottomNavigationBarItem(
              // backgroundColor: Colors.blueGrey,

              icon:  Icon((Icons.home)),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon((Icons.notifications)),
              label: 'Notifications',
            ),

            BottomNavigationBarItem(
              icon: Icon((Icons.camera)),
              label: 'Camera',
            ),

            BottomNavigationBarItem(
              icon: Icon((Icons.contacts)),
              label: 'Contacts',
            ),

            BottomNavigationBarItem(
              icon: Icon((Icons.settings)),
              label: 'Settings',
            ),

          ],

          onTap: (int index){

            setState(() {
              _selindex = index;
            });
          },
        ),
        // body: const Center());
        body:  pages[_selindex]);
  }
}

