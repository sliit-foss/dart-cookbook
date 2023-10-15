/// Checks if string starts with the given target string.
///
/// Arguments
///
/// - string (String): The string to be checked.
/// - target (String): The target string that is expected to be at the beginning of the given string.
/// - position (int): Optional parameter specifying the starting position in the given string to begin the comparison. Defaults to 0
///
/// Returns
///
/// - (Boolean): Returns true if the string starts with the target string at the specified position; otherwise, returns false

@Deprecated(
    'The function startsWith() is deprecated. Use the built-in startsWith() method instead.')
bool startsWith(String string, String target, [int position = 0]) {
  return string.startsWith(target, position);
}
