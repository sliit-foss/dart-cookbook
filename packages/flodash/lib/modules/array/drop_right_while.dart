import '../../_utils/_array.dart';

/// Creates a slice of the given list excluding elements dropped from the end. Elements are dropped until the predicate returns falsey.
///
/// Arguments
/// - list (List): The list to query.
/// - [predicate] (Predicate): a supported predicate argument for the `evaluatePredicate` function.
///
/// Returns
/// - (List): Returns the slice of list excluding elements dropped from the end.

List<T> dropRightWhile<T>(List<T> list, dynamic predicate) {
  for (int i = list.length - 1; i >= 0; i--) {
    if (evaluatePredicate(predicate, list[i])) {
      list.removeAt(i);
    } else {
      break;
    }
  }
  return list;
}
