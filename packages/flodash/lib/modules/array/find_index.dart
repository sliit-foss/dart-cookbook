import '../../_utils/_array.dart';

/// This method is like `find` except that it returns the index of the first element where the predicate returns truthy instead of the element itself.
///
/// Arguments
/// - list (List): The list to query.
/// - [predicate] (Function): The function invoked per element.
/// - [fromIndex] (int): The index to search from.
///
/// Returns
/// - (int): Returns the index of the first element that passes the predicate check, else `-1`.

@Deprecated("Use inbuilt List.indexOf() or List.indexWhere() instead")
int findIndex(List list, dynamic predicate, {int fromIndex = 0}) {
  for (int i = fromIndex; i < list.length; i++) {
    if (evaluatePredicate(predicate, list[i])) return i;
  }
  return -1;
}
