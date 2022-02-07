import 'package:flutter/material.dart';

enum CalcField { decimal, binary, hexadecimal, octal }

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

  void resetTextFields() {
    _decimalController.text = '';
    _hexadecimalController.text = '';
    _octalController.text = '';
    _binaryController.text = '';
  }

  void calculateFields(String decimal, CalcField cf) {
    if (decimal.isEmpty) {
      resetTextFields();
    } else {
      if (cf != CalcField.decimal) {
        _decimalController.text = decimal;
      }
      if (cf != CalcField.hexadecimal) {
        _hexadecimalController.text = int.parse(decimal).toRadixString(16);
      }
      if (cf != CalcField.binary) {
        _binaryController.text = int.parse(decimal).toRadixString(2);
      }
      if (cf != CalcField.octal) {
        _octalController.text = int.parse(decimal).toRadixString(8);
      }
    }
    notifyListeners();
  }

  void setDecimal() {
    calculateFields(_decimalController.text, CalcField.decimal);
  }

  void setOctal() {
    final field = _octalController.text;
    String decNumber = field.isEmpty ? '' : '${int.parse(field, radix: 8)}';
    calculateFields(decNumber, CalcField.octal);
  }

  void setBinary() {
    final field = _binaryController.text;
    String decNumber = field.isEmpty ? '' : '${int.parse(field, radix: 2)}';
    calculateFields(decNumber, CalcField.binary);
  }

  void setHexadecimal() {
    final field = _hexadecimalController.text;
    String decNumber = field.isEmpty ? '' : '${int.parse(field, radix: 16)}';
    calculateFields(decNumber, CalcField.hexadecimal);
  }
}
