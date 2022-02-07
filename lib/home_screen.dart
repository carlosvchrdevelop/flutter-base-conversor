import 'package:flutter/material.dart';
import 'package:flutter_base_conversor/data_provider.dart';
import 'package:provider/provider.dart';

import 'custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextField(
            controller: dataProvider.getDecimalController(),
            label: 'Decimal',
            regExp: r'([0-9]+\.?[0-9]*|\.[0-9]+)',
            isNumeric: true),
        CustomTextField(
            controller: dataProvider.getHexadecimalController(),
            label: 'Hexadecimal',
            regExp: r'([0-9A-Fa-f]+\.?[0-9A-Fa-f]*|\.[0-9A-Fa-f]+)',
            isNumeric: false),
        CustomTextField(
            controller: dataProvider.getBinaryController(),
            label: 'Binario',
            regExp: r'([0-1]+\.?[0-1]*|\.[0-1]+)',
            isNumeric: true),
        CustomTextField(
            controller: dataProvider.getOctalController(),
            label: 'Octal',
            regExp: r'([0-7]+\.?[0-7]*|\.[0-7]+)',
            isNumeric: true),
        const SizedBox(height: 10),
      ],
    );
  }
}
