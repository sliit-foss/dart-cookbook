import '../../_utils/_array.dart';

/// This method is like `findIndex` except that it iterates over elements of the list from right to left.
///
/// Arguments
/// - list (List): The list to query.
/// - [predicate] (Function): The function invoked per element.
/// - [fromIndex] (int): The index to search from.
///
/// Returns
/// - (int): Returns the index of the last element that passes the predicate check, else `-1`.

@Deprecated("Use inbuilt List.lastIndexOf() or List.lastIndexWhere() instead")
int findLastIndex(List list, dynamic predicate, {int? fromIndex}) {
  fromIndex ??= list.length - 1;
  for (int i = fromIndex; i >= 0; i--) {
    if (evaluatePredicate(predicate, list[i])) return i;
  }
  return -1;
}
