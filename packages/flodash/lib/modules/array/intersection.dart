import '../../_utils/_array.dart';
import '../../_utils/_varargs.dart';

/// Creates a list of unique values that are included in all given lists. The order and references of result values are determined by the first list.
///
/// Arguments
/// - lists (...List): The lists to inspect.
///
/// Returns
/// - (List): Returns the new list of intersecting values.

final intersection =
    VarargsFunction((arguments) => baseIntersection(arguments)) as dynamic;
