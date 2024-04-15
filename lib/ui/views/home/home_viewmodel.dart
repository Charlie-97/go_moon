import 'package:go_moon/app/app.dialogs.dart';
import 'package:go_moon/app/app.locator.dart';
import 'package:go_moon/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  void navigateToSecondScreen(DialogResponse<dynamic>? response) {
    if (response != null) {
      if (response.confirmed) {
        _navigationService.navigateToSecondScreenView();
      }
    }
  }

  void showDialog() async {
    final response = await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Continue?',
      description:
          'You are about to navigate to a new screen. Do you wish to continue?',
    );

    navigateToSecondScreen(response!);
  }
}
