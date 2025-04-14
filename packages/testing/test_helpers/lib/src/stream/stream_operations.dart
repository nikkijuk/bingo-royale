import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:test_helpers/src/stream/stream_operations_test.mocks.dart';

// This class is used to generate a mock for a stream
@GenerateMocks([Stream])
class StreamOperations {}

/// This function will create a mocked stream where the first element is
/// retrievable and the objects to yield are yield in order.
Stream<T> createMockedStream<T>(Iterable<T> objectsToYield) {
  final mockStream = MockStream<T>();

  Stream<T> streamFunc() async* {
    for (final object in objectsToYield) {
      yield object;
    }
  }

  //this does not throw IterableElementError.noElement() but it is close
  // enough for testing purpose since it cant be specifically catched anyways
  // since it is private
  if (objectsToYield.isEmpty) {
    when(mockStream.first).thenAnswer((_) async {
      throw Exception('Empty first Element.');
    });
  } else {
    when(mockStream.first).thenAnswer((_) async => objectsToYield.first);
  }

  when(
    mockStream.listen(
      any,
      onError: anyNamed('onError'),
      onDone: anyNamed('onDone'),
      cancelOnError: anyNamed('cancelOnError'),
    ),
  ).thenAnswer((inv) {
    final onData = inv.positionalArguments.single as void Function(
      T,
    )?;
    final onError = inv.namedArguments[#onError] as Function?;
    void onDone() => inv.namedArguments[#onDone] as void Function()?;
    final cancelOnError = inv.namedArguments[#cancelOnError] as bool?;
    return streamFunc().listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  });

  return mockStream;
}
