import 'package:flutter/material.dart';
import 'package:go_moon/ui/common/app_colors.dart';
import 'package:go_moon/ui/common/app_textstyles.dart';
import 'package:go_moon/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'app_dropdown_button_model.dart';

class AppDropdownButton extends StackedView<AppDropdownButtonModel> {
  final List<String> items;
  const AppDropdownButton({super.key, required this.items});

  @override
  Widget builder(
    BuildContext context,
    AppDropdownButtonModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: screenWidth(context),
      decoration: BoxDecoration(
        color: appDropdownColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButton(
        underline: Container(),
        items: viewModel.dropdownList,
        onChanged: (value) {
          viewModel.onChanged(value);
        },
        value: viewModel.initialValue,
        dropdownColor: appDropdownColor,
        style: dropdownTextStyle,
        borderRadius: BorderRadius.circular(12),
        isExpanded: true,
      ),
    );
  }

  @override
  AppDropdownButtonModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppDropdownButtonModel(items);
}
