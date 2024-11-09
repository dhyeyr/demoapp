import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'News.dart';
import 'extra.dart';

class Newshome extends StatefulWidget {
  // final List<Category> categories;

  const Newshome({super.key});

  @override
  State<Newshome> createState() => _NewshomeState();
}

class _NewshomeState extends State<Newshome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[

    News() ,


    Extra(),
    News(),
    Extra()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[Color(0xff1E3690), Color(0xffB5072F)]),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.asset("assets/icon/loop.png"),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Builder(builder: (context) {
            return InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Image.asset("assets/icon/menu.png"));
          }),
        ),
        // Icon(Icons.menu_sharp,color: Colors.white,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.search_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Messages'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.newspaper,color: Colors.blueGrey,),
      //       label: 'News',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.videocam_sharp,color: Colors.blueGrey,),
      //       label: 'Video',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.star_border_purple500,color: Colors.blueGrey,),
      //       label: 'Popular',
      //     ),
      //
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.perm_identity_rounded,color: Colors.blueGrey,),
      //       label: 'Profile',
      //     ),
      //   ],
      //   backgroundColor: Colors.grey,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // For more than 3 items
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_sharp),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_purple500),
            label: 'Popular',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
