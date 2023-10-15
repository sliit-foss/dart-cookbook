@Deprecated("Use inbuilt DateTime.now().millisecondsSinceEpoch instead")

/// Gets the timestamp of the number of milliseconds that have elapsed since the Unix epoch (1 January 1970 00:00:00 UTC).
int now() => DateTime.now().millisecondsSinceEpoch;
