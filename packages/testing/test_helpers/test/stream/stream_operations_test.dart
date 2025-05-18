import 'package:flutter_test/flutter_test.dart';
import 'package:test_helpers/test_helpers.dart';

void main() {
  final emptyObjectsToYield = <String>[];
  final nonEmptyObjectsToYield = ['a', 'b', 'c'];

  group('TestHelper Stream Tests:', () {
    test('Test empty stream', () async {
      final stream = createMockedStream(emptyObjectsToYield);
      var elementCounter = 0;
      stream.listen((event) {
        elementCounter++;
      });

      //wait for everything to yield
      await Future.delayed(const Duration(seconds: 1), () {});

      expect(() async => stream.first, throwsException);
      expect(elementCounter, 0);
    });

    test('Test non empty stream', () async {
      final stream = createMockedStream(nonEmptyObjectsToYield);
      var elementCounter = 0;
      stream.listen((event) {
        expect(event, nonEmptyObjectsToYield.elementAt(elementCounter));
        elementCounter++;
      });

      //wait for everything to yield
      await Future.delayed(const Duration(seconds: 1), () {});

      expect(await stream.first, nonEmptyObjectsToYield.first);
      expect(elementCounter, nonEmptyObjectsToYield.length);
    });
  });
}
