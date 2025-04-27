/// Reverses the given list so that the first element becomes the last, the second element becomes the second to last, and so on.
///
/// Arguments
/// - list (List): The list to reverse.
///
/// Returns
/// - (List): Returns the reversed list.

@Deprecated(
    "Use inbuilt List.reversed.toList() instead. Further this methods does not mutate the passed list like the original javascript method")
List<T> reverse<T>(List<T> list) => list.reversed.toList();
