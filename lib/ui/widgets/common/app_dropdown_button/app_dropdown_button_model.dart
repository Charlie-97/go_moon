import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AppDropdownButtonModel extends BaseViewModel {
  final List<String> items;

  AppDropdownButtonModel(this.items) {
    _initialValue = dropdownList.first.value;
  }
  late String _initialValue;

  List<DropdownMenuItem> get dropdownList => items
      .map((e) => DropdownMenuItem(
            value: e,
            child: Text(e),
          ))
      .toList();

  String get initialValue => _initialValue;

  void onChanged(String value) {
    _initialValue = value;
    rebuildUi();
  }
}
