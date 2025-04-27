/// Gets all but the last element of the given list.
///
/// Arguments
/// - list (List): The list to query.
///
/// Returns
/// - (List): Returns the slice of list excluding the last element.

List<T> initial<T>(List<T> list) => list.sublist(0, list.length - 1);
