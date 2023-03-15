import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';

import 'item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildDropdownItem(Country country) => Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      const SizedBox(
        width: 8.0,
      ),
      Text("${country.name} (${country.isoCode})"),
    ],
  );
  
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 20.0),
      Center(
        child: CountryPickerDropdown(
          initialValue: 'PT',
          itemBuilder: _buildDropdownItem,
          itemFilter: (c) => ['PT', 'DE', 'GB', 'CN'].contains(c.isoCode),
          priorityList: [
            CountryPickerUtils.getCountryByIsoCode('GB'),
            CountryPickerUtils.getCountryByIsoCode('CN'),
          ],
          sortComparator: (Country a, Country b) =>
              a.isoCode.compareTo(b.isoCode),
          onValuePicked: (Country country) {
            print(country.name);
          },
        ),
      ),
      const SizedBox(height: 50.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          GridItem(
            imagePath: "assets/images/oleo.webp",
            title: "Óleo de Eucalipto",
          ),
          GridItem(
            imagePath: "assets/images/oleo.webp",
            title: "Óleo",
          ),
          GridItem(
            imagePath: "assets/images/oleo.webp",
            title: "Óleo",
          ),
        ],
      ),
    ]);
  }
}
