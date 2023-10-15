import 'package:flutter_test/flutter_test.dart';
import 'package:flodash/flodash.dart' as flodash;

void main() {
  test('should return true if the string starts with the target', () {
    String string = 'abc';
    String target = 'a';
    bool result = flodash.startsWith(string, target);
    expect(result, true);
  });
  test('should return false if the string does not start with the target', () {
    String string = 'abc';
    String target = 'b';
    bool result = flodash.startsWith(string, target);
    expect(result, false);
  });
  test(
      'should return true if the string starts with the target at the specified position',
      () {
    String string = 'abc';
    String target = 'b';
    int position = 1;
    bool result = flodash.startsWith(string, target, position);
    expect(result, true);
  });
}
