import 'package:drop_down_list/drop_down_list.dart';
import 'package:flutter/material.dart';

import 'app_dropdown_search.dart';

class DropDownListExample extends StatefulWidget {
  const DropDownListExample({
    Key? key,
  }) : super(key: key);

  @override
  _DropDownListExampleState createState() => _DropDownListExampleState();
}

class _DropDownListExampleState extends State<DropDownListExample> {
  /// This is list of city which will pass to the drop down.
  final List<SelectedListItem> _listOfCities = [
    SelectedListItem(false, "kTokyo"),
    SelectedListItem(false, "kNewYork"),
    SelectedListItem(false, "kLondon"),
    SelectedListItem(false, "kParis"),
    SelectedListItem(false, "kMadrid"),
    SelectedListItem(false, "kDubai"),
    SelectedListItem(false, "kRome"),
    SelectedListItem(false, "kBarcelona"),
    SelectedListItem(false, "kCologne"),
    SelectedListItem(false, "kMonteCarlo"),
    SelectedListItem(false, "kPuebla"),
    SelectedListItem(false, "kFlorence"),
  ];

  /// This is register text field controllers.
  final TextEditingController _fullNameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _phoneNumberTextEditingController =
      TextEditingController();
  final TextEditingController _cityTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _cityTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: _mainBody(),
      ),
    );
  }

  /// This is Main Body widget.
  Widget _mainBody() {
    return AppTextField(
      textEditingController: _cityTextEditingController,
      title: "kCity",
      hint: "kChooseYourCity",
      isCitySelected: true,
      cities: _listOfCities,
    );
  }
}
