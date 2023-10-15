import '../../_utils/_general.dart';

bool isEqual(a, b) {
  if (a is List && b is List) return listEquals(a, b);
  if (a is Map && b is Map) return a.toString() == b.toString();
  return a == b;
}
