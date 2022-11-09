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
  static const List<Widget> _appBarOption =[
    Text("Home"),
    Text("Favorite"),
    Text("Profile"),

  ];
  static const List _widgetoption=<Widget>[
    HomeWidget(),
    FavouriteWidget(),
    ProfileWidget(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        // backgroundColor: Colors.blueAccent,
        // actions: const [Icon(Icons.more_horiz)],
        // title: _appBarOption[_selectedIndex],
        //  leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        // title: _appBarOption.elementAt(_selectedIndex),
        elevation: 0,
      ),
         body: _widgetoption[_selectedIndex],
      // body: _widgetoption.elementAt(_selectedIndex),
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
    );
  }
}