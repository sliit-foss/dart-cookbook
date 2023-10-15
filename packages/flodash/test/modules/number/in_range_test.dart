import 'package:flodash/flodash.dart' as flodash;

import 'package:flutter_test/flutter_test.dart';

main() {
  test('with both start and end', () {
    expect(flodash.inRange(3, 2, 4), equals(true));
  });
  test('end is greater than number', () {
    expect(flodash.inRange(4, 8), equals(true));
  });
  test('end is less than number', () {
    expect(flodash.inRange(4, 2), equals(false));
  });
  test('end is same as number', () {
    expect(flodash.inRange(2, 2), equals(false));
  });
  test('with floating point numbers', () {
    expect(flodash.inRange(1.2, 2), equals(true));
    expect(flodash.inRange(5.2, 4), equals(false));
  });
  test('end is less than start', () {
    expect(flodash.inRange(-3, -2, -6), equals(true));
  });
}
