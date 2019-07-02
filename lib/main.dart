import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vestuario em realidade almentada",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 125, 141)
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}
