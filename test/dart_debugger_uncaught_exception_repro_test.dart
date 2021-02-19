import 'package:test/test.dart';

class FooException implements Exception {}

Future<void> throwFooException() async {
  // Commenting it out makes the problem go away.
  // Wait for the next event.
  await Future(() {});
  throw FooException();
}

void main() {
  test('foo', () async {
    try {
      // Inlining [throwFooException] here also makes the problem go away.
      await throwFooException();
    } on FooException {
      print('caught fooexception');
    }
  });
}
