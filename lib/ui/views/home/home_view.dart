import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_moon/ui/common/app_strings.dart';
import 'package:go_moon/ui/common/app_textstyles.dart';
import 'package:go_moon/ui/common/ui_helpers.dart';
import 'package:go_moon/ui/widgets/common/app_button/app_button.dart';
import 'package:go_moon/ui/widgets/common/app_dropdown_button/app_dropdown_button.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    List<String> firstItemList = [
      'James Webb Station',
      'Preneuere Station',
    ];
    List<String> secondItemList = [
      '1',
      '2',
      '3',
      '4',
    ];

    List<String> thirdItemList = [
      'ad',
      'bv',
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(
            children: [
              Column(
                children: [
                  const Text(
                    '#GoMoon',
                    style: headerTextStyle,
                  ),
                  const Spacer(),
                  AppDropdownButton(
                    items: firstItemList,
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Expanded(
                        child: AppDropdownButton(items: secondItemList),
                      ),
                      const Gap(12),
                      Expanded(
                        child: AppDropdownButton(
                          items: thirdItemList,
                        ),
                      ),
                    ],
                  ),
                  const Gap(12),
                  AppButton(
                    label: 'Go to next screen',
                    onTap: viewModel.showDialog,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: screenHeight(context) * 0.5,
                  width: screenWidth(context) * 0.65,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ksAstroMoonImage),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
