import 'package:flutter_test/flutter_test.dart';
import 'package:go_moon/app/app.locator.dart';
import 'package:go_moon/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  HomeViewModel getModel() => HomeViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    group('showDialog -', () {
      test('When called once should open dialog', () {
        final model = getModel();
        model.showDialog();
        expect(model.showDialog,'');
      });
    });
  });
}
