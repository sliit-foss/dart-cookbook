import 'package:flutter_test/flutter_test.dart';
import 'package:flodash/flodash.dart' as flodash;

void main() {
  test('should convert the string to lower case', () {
    String input = '--Foo-Bar--';
    String expected = '--foo-bar--';
    String result = flodash.toLower(input);
    expect(result, expected);
  });
  test(
      'should convert the string to lower case when it contains both lowercase and uppercase characters',
      () {
    String input = 'fooBar';
    String expected = 'foobar';
    String result = flodash.toLower(input);
    expect(result, expected);
  });
  test(
      'should convert the string to lower case while preserving special characters',
      () {
    String input = '__FOO_BAR__';
    String expected = '__foo_bar__';
    String result = flodash.toLower(input);
    expect(result, expected);
  });
  test('should return an empty string if no input is provided', () {
    String input = '';
    String expected = '';
    String result = flodash.toLower(input);
    expect(result, expected);
  });
}
