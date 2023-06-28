import 'package:flutter_test/flutter_test.dart';
import 'package:flodash/flodash.dart' as flodash;

void main() {
  test('toUpper should convert the string to upper case', () {
    String input = '--foo-bar--';
    String expected = '--FOO-BAR--';
    String result = flodash.toUpper(input);
    expect(result, expected);
  });
  test('toUpper should convert the string to upper case when it contains both lowercase and uppercase characters', () {
    String input = 'fooBar';
    String expected = 'FOOBAR';
    String result = flodash.toUpper(input);
    expect(result, expected);
  });
  test('toUpper should convert the string to upper case while preserving special characters', () {
    String input = '__foo_bar__';
    String expected = '__FOO_BAR__';
    String result = flodash.toUpper(input);
    expect(result, expected);
  });
  test('toUpper should return an empty string if no input is provided', () {
    String input = '';
    String expected = '';
    String result = flodash.toUpper(input);
    expect(result, expected);
  });
}
