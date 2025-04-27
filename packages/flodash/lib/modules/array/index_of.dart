/// Gets the index at which the first occurrence of value is found in the given list. If fromIndex is negative, it's used as the offset from the end of the list.
///
/// Arguments
/// - list (List): The list to inspect.
/// - value (dynamic): The value to search for.
/// - [fromIndex] (int): The index to search from. Default is 0.

@Deprecated("Use inbuilt List.indexOf instead")
int indexOf<T>(List<T> list, T value, {int fromIndex = 0}) =>
    list.indexOf(value, fromIndex);
