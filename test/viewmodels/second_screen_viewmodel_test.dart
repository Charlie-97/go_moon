import 'package:flutter_test/flutter_test.dart';
import 'package:go_moon/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SecondScreenViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
