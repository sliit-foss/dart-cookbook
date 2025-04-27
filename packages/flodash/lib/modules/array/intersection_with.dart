import '../../_utils/_array.dart';
import '../../_utils/_varargs.dart';

/// This method is like `intersection` except that it accepts a comparator which is invoked to compare elements of the lists. The order and references of result values are determined by the first list. The comparator is invoked with one argument: (arrVal).
///
/// Arguments
/// - lists (...List): The lists to inspect.
/// - [comparator] (Function): The comparator invoked per element.
///
/// Returns
/// - (List): Returns the new list of intersecting values.

final intersectionWith = VarargsFunction((arguments) {
  List argumentClone = [...arguments];
  dynamic comparator = argumentClone.removeLast();
  return baseIntersection(argumentClone, comparator: comparator);
}) as dynamic;
