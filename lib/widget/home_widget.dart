import 'package:flutter/material.dart';


class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text("Home Screen",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),);
  }
}