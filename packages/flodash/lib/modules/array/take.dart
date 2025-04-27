/// Creates a slice of the given list with n elements taken from the beginning.
///
/// Arguments
/// - list (List): The list to query.
/// - [n] (int): The number of elements to take from the beginning. Default is 1.
///
/// Returns
/// - (List): Returns the slice of list with n elements taken from the beginning.

List<T> take<T>(List<T> list, {int n = 1}) {
  try {
    return list.sublist(0, n);
  } catch (e) {
    return [];
  }
}
