/// Creates a slice of the given list with n elements taken from the end.
///
/// Arguments
/// - list (List): The list to query.
/// - [n] (int): The number of elements to take from the end. Default is 1.
///
/// Returns
/// - (List): Returns the slice of list taken from the end.

List<T> takeRight<T>(List<T> list, {int n = 1}) {
  try {
    return list.sublist(list.length - n);
  } catch (e) {
    return [];
  }
}
