import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/providers/counter.dart';
import 'package:state_app/providers/favorite_provider.dart';
import 'package:state_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context)=>Couter()),
        ChangeNotifierProvider(create: ((context) => FavoriteProvider())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(""),
      ),
    );
  }
}

