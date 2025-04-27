/// Gets all but the first element of the given list.
///
/// Arguments
/// - list (List): The list to query.
///
/// Returns
/// - (List): Returns the slice of list with the first element removed.

List<T> tail<T>(List<T> list) {
  try {
    return list.sublist(1);
  } catch (e) {
    return [];
  }
}
