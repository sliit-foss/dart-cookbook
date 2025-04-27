/// The inverse of `toPairs`; this method returns a map composed from key-value pairs.
///
/// Arguments
/// - list (List): The key-value pairs.
///
/// Returns
/// - (Map): Returns the new map of key-value pairs.

Map<K, V> fromPairs<K, V>(List<List<dynamic>> list) {
  Map<K, V> map = {};
  for (int i = 0; i < list.length; i++) {
    map[list[i][0] as K] = list[i][1] as V;
  }
  return map;
}
