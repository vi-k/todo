enum TodoStatus {
  pending,
  completed;

  T map<T extends Object?>({
    required T Function() pending,
    required T Function() completed,
  }) {
    switch (this) {
      case TodoStatus.pending:
        return pending();

      case TodoStatus.completed:
        return completed();
    }
  }

  T maybeMap<T extends Object?>({
    T Function()? pending,
    T Function()? completed,
    required T Function() orElse,
  }) =>
      map<T>(
        pending: pending ?? orElse,
        completed: completed ?? orElse,
      );

  T? mapOrNull<T extends Object?>({
    T Function()? pending,
    T Function()? completed,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        pending: pending,
        completed: completed,
      );
}
