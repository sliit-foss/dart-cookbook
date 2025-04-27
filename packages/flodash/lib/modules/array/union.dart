import 'flatten.dart';
import 'uniq.dart';

import '../../_utils/_varargs.dart';

/// Creates a list of unique values, in order, from all given lists.
///
/// Arguments
/// - lists (...List): The lists to inspect.
///
/// Returns
/// - (List): Returns the new list of combined values.

final union =
    VarargsFunction((arguments) => uniq(flatten(arguments))) as dynamic;
