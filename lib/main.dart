import 'package:flutter/material.dart';
import 'package:flutter_base_conversor/data_provider.dart';
import 'package:flutter_base_conversor/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DataProvider(),
      child: const MaterialApp(
        title: 'Base conversor',
        home: HomeScreen(),
      ),
    );
  }
}
