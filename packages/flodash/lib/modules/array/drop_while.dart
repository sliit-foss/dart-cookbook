import '../../_utils/_array.dart';

/// Creates a slice of the given list excluding elements dropped from the beginning. Elements are dropped until the predicate returns falsey.
///
/// Arguments
/// - list (List): The list to query.
/// - [predicate] (Predicate): a supported predicate argument for the `evaluatePredicate` function.
///
/// Returns
/// - (List): Returns the slice of list excluding elements dropped from the beginning.

List<T> dropWhile<T>(List<T> list, dynamic predicate) {
  for (int i = 0; i < list.length; i++) {
    if (evaluatePredicate(predicate, list[i])) {
      list.removeAt(i);
      i--;
    } else {
      break;
    }
  }
  return list;
}
