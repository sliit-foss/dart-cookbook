/// Converts all elements in the given list into a string separated by separator.
///
/// Arguments
/// - list (List): The list to convert.
/// - separator (String): The string to separate the elements.
///
/// Returns
/// - (String): Returns the joined string.

@Deprecated("Use inbuilt List.join instead")
String join(List list, [String separator = ',']) => list.join(separator);
