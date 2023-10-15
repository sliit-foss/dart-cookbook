listEquals(List a, List b) {
  return a.toSet().difference(b.toSet()).isEmpty && a.length == b.length;
}
