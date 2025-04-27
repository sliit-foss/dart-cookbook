/// This method is like `indexOf` except that it iterates over elements of array from right to left.
///
/// Arguments
/// - list (List): The list to search.
/// - value (dynamic): The value to search for.
/// - [fromIndex] (int): The index to search from. Default is the last index of the list.

@Deprecated("Use inbuilt List.lastIndexOf instead")
int lastIndexOf<T>(List<T> list, T value, {int? fromIndex}) {
  fromIndex ??= list.length - 1;
  return list.lastIndexOf(value, fromIndex);
}
