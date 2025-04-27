/// Recursively flatten the given array up to `depth` times.
///
/// Arguments
/// - list (List): The list to flatten.
/// - [depth] (int): The maximum depth to flatten. Default is 1.
///
/// Returns
/// - (List): Returns the flattened list.

List<T> flattenDepth<T>(Iterable<T> list, {int depth = 1}) {
  if (depth == 0) return list.toList();
  return [
    for (var element in list)
      if (element is! Iterable<T>)
        element
      else
        ...flattenDepth(element, depth: depth - 1),
  ];
}
