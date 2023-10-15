/// Converts a string, as a whole, to lowercase.
///
/// Arguments
///
/// - (string): The string to convert.
///
/// Returns
///
/// - (string): The lowercase string.

@Deprecated(
    'The function toLower() is deprecated. Use the built-in toLowerCase() method instead.')
String toLower([String string = '']) {
  return string.toLowerCase();
}
