@Deprecated("Use inbuilt List.sublist instead")
List<T> slice<T>(List<T> list, {int start = 0, dynamic end}) {
  end ??= list.length;
  if (end < 0) end = list.length + end;
  if (start < 0) start = list.length + start;
  return list.sublist(start, end);
}
