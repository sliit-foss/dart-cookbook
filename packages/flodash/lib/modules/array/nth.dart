/// Gets the element at index n of array. If n is negative, the nth element from the end is returned.
///
/// Arguments
/// - list (List): The list to query.
/// - [n] (int): The index of the element to return. Default is 0.
///
/// Returns
/// - (dynamic): Returns the element at index n of the list.

T? nth<T>(List<T> list, {int n = 0}) {
  if (n < 0) n = list.length + n;
  try {
    return list[n];
  } catch (e) {
    return null;
  }
}
