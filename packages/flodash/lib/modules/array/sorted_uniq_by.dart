import '../lang/main.dart';

/// This method is like `uniqBy` except that it's designed and optimized for sorted lists.
///
/// Arguments
/// - list (List): The list to inspect.
/// - [iteratee] (Function): The iteratee invoked per element.
///
/// Returns
/// - (List): Returns the new duplicate free list.

List<T> sortedUniqBy<T>(List<T> list, Function iteratee) {
  List<T> result = [];
  for (int i = 0; i < list.length; i++) {
    if (i == 0 || !isEqual(iteratee(list[i]), iteratee(list[i - 1]))) {
      result.add(list[i]);
    }
  }
  return result;
}
