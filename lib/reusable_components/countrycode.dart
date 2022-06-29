import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryCode extends StatelessWidget {
  const CountryCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      initialSelection: 'eg',
      favorite: const ['eg', '+20'],
      showCountryOnly: false,
      flagWidth: 10,
      showOnlyCountryWhenClosed: true,
    );
  }
}
