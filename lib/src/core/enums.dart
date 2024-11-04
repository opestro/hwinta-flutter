enum FetchStatus {
  initial,
  loading,
  loaded,
  error,
}

enum FutureStatus {
  initial,
  // in progress (loading or saving or deleting or doing some other async operation)
  inProgress,
  // completed successfully
  success,
  // completed with error
  error,
  // cancelled
  cancelled,
}
