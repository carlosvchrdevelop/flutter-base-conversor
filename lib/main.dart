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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Base conversor',
        home: Scaffold(
            appBar: AppBar(title: const Text('Conversor de base')),
            body: const Center(
              child:
                  FractionallySizedBox(widthFactor: 0.9, child: HomeScreen()),
            )),
      ),
    );
  }
}
