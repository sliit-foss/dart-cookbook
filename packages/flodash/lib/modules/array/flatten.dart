/// Flattens the given list upto a single level in depth.
///
/// Arguments
/// - list (List): The list to flatten.
///
/// Returns
/// - (List): Returns the flattened list.

List<T> flatten<T>(Iterable<T> list) => [
      for (var element in list)
        if (element is! Iterable<T>) element else ...element
    ];
