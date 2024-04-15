import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_moon/ui/common/app_colors.dart';
import 'package:go_moon/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'info_alert_dialog_model.dart';

const double _graphicSize = 60;

class InfoAlertDialog extends StackedView<InfoAlertDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const InfoAlertDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InfoAlertDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: appDropdownColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        request.title!,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: appColorWhite),
                      ),
                      verticalSpaceTiny,
                      Text(
                        request.description!,
                        style:
                            const TextStyle(fontSize: 14, color: appColorGrey),
                        maxLines: 3,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: _graphicSize,
                  height: _graphicSize,
                  decoration: const BoxDecoration(
                    color: Color(0xffF6E7B0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(_graphicSize / 2),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '⭐️',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => completer(
                      DialogResponse(
                        confirmed: false,
                      ),
                    ),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: appColorBlack,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: appColorWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(8),
                Expanded(
                  child: GestureDetector(
                    onTap: () => completer(DialogResponse(
                      confirmed: true,
                    )),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: appColorGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Got it',
                        style: TextStyle(
                          color: appColorBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  InfoAlertDialogModel viewModelBuilder(BuildContext context) =>
      InfoAlertDialogModel();
}
