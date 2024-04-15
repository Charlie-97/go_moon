import 'package:flutter/material.dart';
import 'package:go_moon/ui/common/app_textstyles.dart';
import 'package:stacked/stacked.dart';

import 'second_screen_viewmodel.dart';

class SecondScreenView extends StackedView<SecondScreenViewModel> {
  const SecondScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SecondScreenViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Welcome to the final Screen',
            style: headerTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  SecondScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SecondScreenViewModel();
}
