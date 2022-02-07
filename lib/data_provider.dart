import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  final TextEditingController _decimalController = TextEditingController();
  final TextEditingController _hexadecimalController = TextEditingController();
  final TextEditingController _binaryController = TextEditingController();
  final TextEditingController _octalController = TextEditingController();

  TextEditingController getDecimalController() {
    return _decimalController;
  }

  TextEditingController getHexadecimalController() {
    return _hexadecimalController;
  }

  TextEditingController getBinaryController() {
    return _binaryController;
  }

  TextEditingController getOctalController() {
    return _octalController;
  }
}
