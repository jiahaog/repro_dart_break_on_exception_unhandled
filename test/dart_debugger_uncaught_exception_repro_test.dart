import 'package:dart_debugger_uncaught_exception_repro/dart_debugger_uncaught_exception_repro.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
