import '../../_utils/_array.dart';

List<T> _takeWhile<T>(List<T> list, dynamic predicate,
    {int start = 0, int? end}) {
  if (list.isEmpty) return [];
  List<T> result = [];
  end ??= list.length;
  bool isFromRight = start > end;
  for (int i = start; isFromRight ? i >= end : i < end;) {
    if (evaluatePredicate(predicate, list[i])) {
      result.add(list[i]);
    } else {
      break;
    }
    isFromRight ? i-- : i++;
  }
  return isFromRight ? result.reversed.toList() : result;
}

/// Creates a slice of the given list with elements taken from the beginning. Elements are taken until the predicate returns falsey.
///
/// Arguments
/// - list (List): The list to query.
/// - [predicate] (Predicate): a supported predicate argument for the `evaluatePredicate` function.
/// - [start] (int): The index to start from. Default is 0.
/// - [end] (int): The index to end at. Default is the length of the list.
///
/// Returns
/// - (List): Returns the slice of list taken from the beginning.

List<T> Function<T>(List<T>, dynamic, {int start, int? end}) takeWhile =
    _takeWhile;

/// Creates a slice of the given list with elements taken from the end. Elements are taken until the predicate returns falsey.
///
/// Arguments
/// - list (List): The list to query.
/// - [predicate] (Predicate): a supported predicate argument for the `evaluatePredicate` function.
///
/// Returns
/// - (List): Returns the slice of list taken from the end.

List<T> takeRightWhile<T>(List<T> list, dynamic predicate) =>
    _takeWhile(list, predicate, start: list.length - 1, end: 0);
