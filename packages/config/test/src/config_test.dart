// ignore_for_file: prefer_const_constructors

import 'package:config/config.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Config', () {
    test('can be instantiated', () {
      expect(Config(), isNotNull);
    });
  });
}
