/// Clamps number within the inclusive lower and upper bounds.
///
/// Arguments
///
/// - number (num): The number to clamp.
/// - [lower] (num): The lower bound.
/// - upper (num): The upper bound.
///
/// Returns
///
/// - (num): Returns the clamped number.
dynamic clamp(num number, num? lower, [num? upper]) {
  if (upper == null) {
    upper = lower;
    if (number > upper!) {
      return upper;
    }
    return number;
  } else {
    if (number > upper) {
      return upper;
    } else if (number < lower!) {
      return lower;
    }
    return number;
  }
}
