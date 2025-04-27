import '../../_utils/_varargs.dart';

/// Creates a new list concatenating the list with any additional lists and/or values.
///
/// Arguments
/// - list (List): The list to concatenate.
/// - [values] (...dynamic): The values to concatenate.
///
/// Returns
/// - (List): Returns the new concatenated list.

final concat = VarargsFunction((arguments) {
  return arguments.fold([], (List acc, element) {
    if (element is List) {
      acc.addAll(element);
    } else {
      acc.add(element);
    }
    return acc;
  });
}) as dynamic;
