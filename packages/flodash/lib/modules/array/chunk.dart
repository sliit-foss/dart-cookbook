/// Creates an array of elements split into groups the length of size. If array can't be split evenly, the final chunk will be the remaining elements.
///
/// Arguments
///
/// - list (List): The array to process.
/// - [size=1] (int): The length of each chunk
///
/// Returns
///
/// - (List): Returns the new array of chunks.

List<List<T>> chunk<T>(List<T> list, {int size = 1}) {
  List<List<T>> chunks = [];
  for (int i = 0; i < list.length; i += size) {
    int end = i + size;
    if (end > list.length) end = list.length;
    chunks.add(list.sublist(i, end).cast<T>());
  }
  return chunks;
}
