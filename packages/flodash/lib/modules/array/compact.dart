import '../lang/main.dart';

/// Creates an array with all falsey values removed. The values false, null, 0, "", undefined, and NaN are falsey.
///
/// Arguments
///
/// - list (List): The array to compact.
///
/// Returns
///
/// - (List): Returns the new array of filtered values.

List<T> compact<T>(List<T> list) {
  return list.where((e) => !isFalsy(e)).toList();
}
