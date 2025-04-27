/// Recursively flattens the given list.
///
/// Arguments
/// - list (List): The list to flatten.
///
/// Returns
/// - (List): Returns the flattened list.

List<T> flattenDeep<T>(Iterable<T> list) => [
      for (var element in list)
        if (element is! Iterable<T>) element else ...flattenDeep(element),
    ];
