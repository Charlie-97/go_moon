import 'package:flutter/material.dart';
import 'package:go_moon/ui/common/app_colors.dart';
import 'package:go_moon/ui/common/app_textstyles.dart';
import 'package:stacked/stacked.dart';

import 'app_button_model.dart';

class AppButton extends StackedView<AppButtonModel> {
  final String label;
  final void Function()? onTap;
  const AppButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget builder(
    BuildContext context,
    AppButtonModel viewModel,
    Widget? child,
  ) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: appColorWhite,
        ),
        child: Text(
          label,
          style: buttonLabelStyle,
        ),
      ),
    );
  }

  @override
  AppButtonModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppButtonModel();
}
