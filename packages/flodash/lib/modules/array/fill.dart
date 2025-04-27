/// Fills elements of the given list with value from start up to, but not including, end.
///
/// Arguments
/// - list (List): The list to fill.
/// - value (dynamic): The value to fill.
/// - [start] (int): The start index. Default is 0.
/// - [end] (int): The end index. Default is the length of the list.
///
/// Returns
/// - (List): Returns the filled list.

@Deprecated('Use inbuilt List.fillRange() instead')
List fill(List list, dynamic value, {int start = 0, int? end}) {
  end ??= list.length;
  list.fillRange(start, end, value);
  return list;
}
