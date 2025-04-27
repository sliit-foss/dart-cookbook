import 'flatten.dart';

import '../../_utils/_array.dart';
import '../../_utils/_varargs.dart';

/// This method is like `difference` except that it accepts a comparator function which is invoked for each element in the list and values to generate the criterion by which they're compared.
/// The order and references of result values are determined by the first list. The iteratee is invoked with one argument, the element being inspected.
///
/// Arguments
/// - list (List): The list to inspect.
/// - [values] (...dynamic): The list(s) to exclude.
/// - [comparator] (Function): The comparator invoked per element.
///
/// Returns
/// - (List): Returns the new list of filtered values.

final differenceWith = VarargsFunction((arguments) {
  List argumentClone = [...arguments];
  dynamic comparator = argumentClone.removeLast();
  List subList = flatten(argumentClone.sublist(1));
  return arguments[0]
      .where((e) => evaluateDifference(subList, e, comparator: comparator))
      .toList();
}) as dynamic;
