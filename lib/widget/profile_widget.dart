import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Center(
        child: Text("Profile Screen",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),);
  }
}