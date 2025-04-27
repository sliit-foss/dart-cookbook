/// Creates a slice of array with n elements dropped from the end.
///
/// Arguments
/// - list (List): The list to query.
/// - [n] (int): The number of elements to drop from the end. Default is 1.
///
/// Returns
/// - (List): Returns the slice of list with n elements dropped from the end.

List<T> dropRight<T>(List<T> list, {int n = 1}) =>
    list.sublist(0, list.length - n);
