import 'package:flutter/material.dart';
import 'package:food/models/NavData.dart';
import 'package:food/screens/burger-screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavData(),
      child: MaterialApp(
        home: BurgerScreen(),
      ),
    );
  }
}
