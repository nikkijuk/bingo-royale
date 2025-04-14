import 'package:test/test.dart';
import 'package:test_helpers/test_helpers.dart';

void main() {
  group('TestStringHelpers', () {
    test('empty random string', () {
      expect(createRandomString(0), '');
    });

    test('length of random string', () {
      expect(createRandomString(1).length, 1);
    });

  });
}
