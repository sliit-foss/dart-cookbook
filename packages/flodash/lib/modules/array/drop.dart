/// Creates a slice of the given list with n elements dropped from the beginning.
///
/// Arguments
/// - list (List): The list to query.
/// - [n] (int): The number of elements to drop. Default is 1.
///
/// Returns
/// - (List): Returns the slice of the list.

List<T> drop<T>(List<T> list, {int n = 1}) => list.sublist(n);
