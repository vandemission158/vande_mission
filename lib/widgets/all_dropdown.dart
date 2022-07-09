import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../helper/app_color.dart';
import '../helper/image_constant.dart';

class AllDropDown extends StatelessWidget {
  final String? searchTitle, selectTitle;
  final List<String>? list;
  const AllDropDown({Key? key, this.searchTitle, this.list, this.selectTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      dropdownDecoratorProps: const DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              filled: true,
              fillColor: lightWhite)),
      dropdownButtonProps: DropdownButtonProps(icon: Image.asset(dropdown)),
      popupProps: PopupProps.menu(
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              filled: true,
              hintStyle: const TextStyle(color: grey),
              hintText: searchTitle!.tr,
              fillColor: lightWhite),
        ),
        showSearchBox: true,
        showSelectedItems: true,
        disabledItemFn: (String s) => s.startsWith('I'),
      ),
      items: list!,
      onChanged: print,
      selectedItem: selectTitle!.tr,
    );
  }
}
