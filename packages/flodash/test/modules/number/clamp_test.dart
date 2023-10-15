import 'package:flodash/flodash.dart' as flodash;

import 'package:flutter_test/flutter_test.dart';

main() {
  test('lower', () {
    expect(flodash.clamp(-10, -5, 5), equals(-5));
  });
  test('upper', () {
    expect(flodash.clamp(10, -5, 5), equals(5));
  });
  test('in range', () {
    expect(flodash.clamp(3, -5, 5), equals(3));
  });
  test('2 arguments - upper', () {
    expect(flodash.clamp(12, 6), equals(6));
  });
  test('2 arguments - in range', () {
    expect(flodash.clamp(4, 6), equals(4));
    expect(flodash.clamp(-500, 5), equals(-500));
  });
}
