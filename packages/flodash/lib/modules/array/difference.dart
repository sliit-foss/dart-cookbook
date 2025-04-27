import 'flatten.dart';

import '../../_utils/_general.dart';
import '../../_utils/_varargs.dart';

/// Creates a list of values not included in the other given list(s). The order and references of result values are determined by the first list.
///
/// Arguments
/// - list (List): The list to inspect.
/// - [values] (...dynamic): The list(s) to exclude.
///
/// Returns
/// - (List): Returns the new list of filtered values.

final difference = VarargsFunction((arguments) {
  List subList = flatten(arguments.sublist(1));
  return arguments[0].where((e) {
    if (e is List) {
      return subList
          .whereType<List>()
          .where((l) => listEquals(e, l))
          .toList()
          .isEmpty;
    }
    if (e is Map) {
      return subList
          .whereType<Map>()
          .where((m) => e.toString() == m.toString())
          .toList()
          .isEmpty;
    }
    return !subList.contains(e);
  }).toList();
}) as dynamic;
