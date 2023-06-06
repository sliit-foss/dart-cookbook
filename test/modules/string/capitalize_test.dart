import 'package:flodash/flodash.dart' as flodash;

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('With all caps', () {
    String str = flodash.capitalize('FRED');
    expect(str, 'Fred');
  });
  test('With mixed case', () {
    String str = flodash.capitalize('FrED');
    expect(str, 'Fred');
  });
  test('Two words both capitalized', () {
    String str = flodash.capitalize('Deja Vu');
    expect(str, 'Deja vu');
  });
  test('With all lowercase', () {
    String str = flodash.capitalize('kitten');
    expect(str, 'Kitten');
  });
  test('All caps without first letter', () {
    String str = flodash.capitalize('aDIDAS');
    expect(str, 'Adidas');
  });
}
