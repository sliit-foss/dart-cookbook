import '../../_utils/_array.dart';

/// Iterates over elements of collection, returning the first element predicate returns truthy for. The predicate is invoked with the value of the current item.
/// Arguments
/// - list (List): The collection to inspect.
/// - [iteratee] (dynamic): The iteratee invoked per iteration.
///
/// Returns
/// (T?): Returns the matched element, else null.
T? find<T>(List<T> list, dynamic iteratee) {
  return list.firstWhere((element) => evaluatePredicate(iteratee, element),
      orElse: () => null);
}
