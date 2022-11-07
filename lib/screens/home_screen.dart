import 'package:flutter/material.dart';
import 'package:state_app/widget/favourite_widget.dart';
import 'package:state_app/widget/home_widget.dart';
import 'package:state_app/widget/profile_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage(String s, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List _widgetoption=<Widget>[
    HomeWidget(),
    FavouriteWidget(),
    ProfileWidget(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetoption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
           _selectedIndex = value;
          });
        },
        currentIndex:_selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
          label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded),
          label: "Favorite",
          ),
         BottomNavigationBarItem(icon: Icon(Icons.person),
          label: "Profile",
          ), 

        ],
        ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Favourite items",style: TextStyle(color: Colors.black),),
        elevation: 0,
      ),
    );
  }
}