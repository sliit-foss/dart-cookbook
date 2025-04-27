import '../../_utils/_array.dart';

/// Removes all elements from the given list for which the predicate returns truthy for and returns an array of the removed elements. The predicate is invoked with a single argument: (value).
///
/// Arguments
/// - list (List): The list to modify.
/// - [predicate] (Function): The function invoked per element.
///
/// Returns
/// - (List): Returns a list of the removed elements.

List<T> remove<T>(List<T> list, dynamic predicate) {
  List<T> removed = [];
  list.removeWhere((element) {
    if (evaluatePredicate(predicate, element)) {
      removed.add(element);
      return true;
    }
    return false;
  });
  return removed;
}
