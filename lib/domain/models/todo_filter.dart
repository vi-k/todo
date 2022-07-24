enum TodoFilter {
  all,
  completed,
  uncompleted,
  withReminder,
  withRepetition;

  T map<T extends Object?>({
    required T Function() all,
    required T Function() completed,
    required T Function() uncompleted,
    required T Function() withReminder,
    required T Function() withRepetition,
  }) {
    switch (this) {
      case TodoFilter.all:
        return all();

      case TodoFilter.completed:
        return completed();

      case TodoFilter.uncompleted:
        return uncompleted();

      case TodoFilter.withReminder:
        return withReminder();

      case TodoFilter.withRepetition:
        return withRepetition();
    }
  }

  T maybeMap<T extends Object?>({
    T Function()? all,
    T Function()? completed,
    T Function()? uncompleted,
    T Function()? withReminder,
    T Function()? withRepetition,
    required T Function() orElse,
  }) =>
      map<T>(
        all: all ?? orElse,
        completed: completed ?? orElse,
        uncompleted: uncompleted ?? orElse,
        withReminder: withReminder ?? orElse,
        withRepetition: withRepetition ?? orElse,
      );

  T? mapOrNull<T extends Object?>({
    T Function()? all,
    T Function()? completed,
    T Function()? uncompleted,
    T Function()? withReminder,
    T Function()? withRepetition,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        all: all,
        completed: completed,
        uncompleted: uncompleted,
        withReminder: withReminder,
        withRepetition: withRepetition,
      );
}
