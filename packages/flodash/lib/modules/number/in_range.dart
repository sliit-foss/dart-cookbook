/// Checks if n is between start and up to, but not including, end. If end is not specified, it's set to start with start then set to 0. If start is greater than end the params are swapped to support negative ranges.
///
/// Arguments
///
/// - number (num): The number to check.
/// - [start = 0] (num): The start of the range.
/// - end (num): The end of the range.
///
/// Returns
///
/// - (bool): Returns true if number is in the range, else false.
dynamic inRange(num number, num? start, [num? end]) {
  if (end == null) {
    end = start;
    start = 0;
  }
  if (start! > end!) {
    var temp = start;
    start = end;
    end = temp;
  }
  return number >= start && number < end;
}
