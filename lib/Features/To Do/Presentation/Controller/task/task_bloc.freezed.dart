// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() taskLoading,
    required TResult Function(List<TaskEntity> tasks) taskLoaded,
    required TResult Function(String message) taskFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? taskLoading,
    TResult? Function(List<TaskEntity> tasks)? taskLoaded,
    TResult? Function(String message)? taskFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? taskLoading,
    TResult Function(List<TaskEntity> tasks)? taskLoaded,
    TResult Function(String message)? taskFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskLoading value) taskLoading,
    required TResult Function(TaskLoaded value) taskLoaded,
    required TResult Function(TaskFailure value) taskFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskLoading value)? taskLoading,
    TResult? Function(TaskLoaded value)? taskLoaded,
    TResult? Function(TaskFailure value)? taskFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskLoading value)? taskLoading,
    TResult Function(TaskLoaded value)? taskLoaded,
    TResult Function(TaskFailure value)? taskFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() taskLoading,
    required TResult Function(List<TaskEntity> tasks) taskLoaded,
    required TResult Function(String message) taskFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? taskLoading,
    TResult? Function(List<TaskEntity> tasks)? taskLoaded,
    TResult? Function(String message)? taskFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? taskLoading,
    TResult Function(List<TaskEntity> tasks)? taskLoaded,
    TResult Function(String message)? taskFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskLoading value) taskLoading,
    required TResult Function(TaskLoaded value) taskLoaded,
    required TResult Function(TaskFailure value) taskFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskLoading value)? taskLoading,
    TResult? Function(TaskLoaded value)? taskLoaded,
    TResult? Function(TaskFailure value)? taskFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskLoading value)? taskLoading,
    TResult Function(TaskLoaded value)? taskLoaded,
    TResult Function(TaskFailure value)? taskFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TaskState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TaskLoadingImplCopyWith<$Res> {
  factory _$$TaskLoadingImplCopyWith(
          _$TaskLoadingImpl value, $Res Function(_$TaskLoadingImpl) then) =
      __$$TaskLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskLoadingImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskLoadingImpl>
    implements _$$TaskLoadingImplCopyWith<$Res> {
  __$$TaskLoadingImplCopyWithImpl(
      _$TaskLoadingImpl _value, $Res Function(_$TaskLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskLoadingImpl implements TaskLoading {
  const _$TaskLoadingImpl();

  @override
  String toString() {
    return 'TaskState.taskLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() taskLoading,
    required TResult Function(List<TaskEntity> tasks) taskLoaded,
    required TResult Function(String message) taskFailure,
  }) {
    return taskLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? taskLoading,
    TResult? Function(List<TaskEntity> tasks)? taskLoaded,
    TResult? Function(String message)? taskFailure,
  }) {
    return taskLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? taskLoading,
    TResult Function(List<TaskEntity> tasks)? taskLoaded,
    TResult Function(String message)? taskFailure,
    required TResult orElse(),
  }) {
    if (taskLoading != null) {
      return taskLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskLoading value) taskLoading,
    required TResult Function(TaskLoaded value) taskLoaded,
    required TResult Function(TaskFailure value) taskFailure,
  }) {
    return taskLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskLoading value)? taskLoading,
    TResult? Function(TaskLoaded value)? taskLoaded,
    TResult? Function(TaskFailure value)? taskFailure,
  }) {
    return taskLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskLoading value)? taskLoading,
    TResult Function(TaskLoaded value)? taskLoaded,
    TResult Function(TaskFailure value)? taskFailure,
    required TResult orElse(),
  }) {
    if (taskLoading != null) {
      return taskLoading(this);
    }
    return orElse();
  }
}

abstract class TaskLoading implements TaskState {
  const factory TaskLoading() = _$TaskLoadingImpl;
}

/// @nodoc
abstract class _$$TaskLoadedImplCopyWith<$Res> {
  factory _$$TaskLoadedImplCopyWith(
          _$TaskLoadedImpl value, $Res Function(_$TaskLoadedImpl) then) =
      __$$TaskLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class __$$TaskLoadedImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskLoadedImpl>
    implements _$$TaskLoadedImplCopyWith<$Res> {
  __$$TaskLoadedImplCopyWithImpl(
      _$TaskLoadedImpl _value, $Res Function(_$TaskLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskLoadedImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$TaskLoadedImpl implements TaskLoaded {
  const _$TaskLoadedImpl(final List<TaskEntity> tasks) : _tasks = tasks;

  final List<TaskEntity> _tasks;
  @override
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.taskLoaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskLoadedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskLoadedImplCopyWith<_$TaskLoadedImpl> get copyWith =>
      __$$TaskLoadedImplCopyWithImpl<_$TaskLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() taskLoading,
    required TResult Function(List<TaskEntity> tasks) taskLoaded,
    required TResult Function(String message) taskFailure,
  }) {
    return taskLoaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? taskLoading,
    TResult? Function(List<TaskEntity> tasks)? taskLoaded,
    TResult? Function(String message)? taskFailure,
  }) {
    return taskLoaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? taskLoading,
    TResult Function(List<TaskEntity> tasks)? taskLoaded,
    TResult Function(String message)? taskFailure,
    required TResult orElse(),
  }) {
    if (taskLoaded != null) {
      return taskLoaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskLoading value) taskLoading,
    required TResult Function(TaskLoaded value) taskLoaded,
    required TResult Function(TaskFailure value) taskFailure,
  }) {
    return taskLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskLoading value)? taskLoading,
    TResult? Function(TaskLoaded value)? taskLoaded,
    TResult? Function(TaskFailure value)? taskFailure,
  }) {
    return taskLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskLoading value)? taskLoading,
    TResult Function(TaskLoaded value)? taskLoaded,
    TResult Function(TaskFailure value)? taskFailure,
    required TResult orElse(),
  }) {
    if (taskLoaded != null) {
      return taskLoaded(this);
    }
    return orElse();
  }
}

abstract class TaskLoaded implements TaskState {
  const factory TaskLoaded(final List<TaskEntity> tasks) = _$TaskLoadedImpl;

  List<TaskEntity> get tasks;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskLoadedImplCopyWith<_$TaskLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskFailureImplCopyWith<$Res> {
  factory _$$TaskFailureImplCopyWith(
          _$TaskFailureImpl value, $Res Function(_$TaskFailureImpl) then) =
      __$$TaskFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TaskFailureImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskFailureImpl>
    implements _$$TaskFailureImplCopyWith<$Res> {
  __$$TaskFailureImplCopyWithImpl(
      _$TaskFailureImpl _value, $Res Function(_$TaskFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TaskFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskFailureImpl implements TaskFailure {
  const _$TaskFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TaskState.taskFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFailureImplCopyWith<_$TaskFailureImpl> get copyWith =>
      __$$TaskFailureImplCopyWithImpl<_$TaskFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() taskLoading,
    required TResult Function(List<TaskEntity> tasks) taskLoaded,
    required TResult Function(String message) taskFailure,
  }) {
    return taskFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? taskLoading,
    TResult? Function(List<TaskEntity> tasks)? taskLoaded,
    TResult? Function(String message)? taskFailure,
  }) {
    return taskFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? taskLoading,
    TResult Function(List<TaskEntity> tasks)? taskLoaded,
    TResult Function(String message)? taskFailure,
    required TResult orElse(),
  }) {
    if (taskFailure != null) {
      return taskFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(TaskLoading value) taskLoading,
    required TResult Function(TaskLoaded value) taskLoaded,
    required TResult Function(TaskFailure value) taskFailure,
  }) {
    return taskFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(TaskLoading value)? taskLoading,
    TResult? Function(TaskLoaded value)? taskLoaded,
    TResult? Function(TaskFailure value)? taskFailure,
  }) {
    return taskFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(TaskLoading value)? taskLoading,
    TResult Function(TaskLoaded value)? taskLoaded,
    TResult Function(TaskFailure value)? taskFailure,
    required TResult orElse(),
  }) {
    if (taskFailure != null) {
      return taskFailure(this);
    }
    return orElse();
  }
}

abstract class TaskFailure implements TaskState {
  const factory TaskFailure(final String message) = _$TaskFailureImpl;

  String get message;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskFailureImplCopyWith<_$TaskFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(BuildContext context) addTask,
    required TResult Function(int id, bool completed) updateTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String query) searchTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTasks,
    TResult? Function(BuildContext context)? addTask,
    TResult? Function(int id, bool completed)? updateTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String query)? searchTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(BuildContext context)? addTask,
    TResult Function(int id, bool completed)? updateTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String query)? searchTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTasks value) fetchTasks,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(SearchTasks value) searchTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTasks value)? fetchTasks,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(SearchTasks value)? searchTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTasks value)? fetchTasks,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(SearchTasks value)? searchTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchTasksImplCopyWith<$Res> {
  factory _$$FetchTasksImplCopyWith(
          _$FetchTasksImpl value, $Res Function(_$FetchTasksImpl) then) =
      __$$FetchTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$FetchTasksImpl>
    implements _$$FetchTasksImplCopyWith<$Res> {
  __$$FetchTasksImplCopyWithImpl(
      _$FetchTasksImpl _value, $Res Function(_$FetchTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTasksImpl implements FetchTasks {
  const _$FetchTasksImpl();

  @override
  String toString() {
    return 'TaskEvent.fetchTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(BuildContext context) addTask,
    required TResult Function(int id, bool completed) updateTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String query) searchTasks,
  }) {
    return fetchTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTasks,
    TResult? Function(BuildContext context)? addTask,
    TResult? Function(int id, bool completed)? updateTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String query)? searchTasks,
  }) {
    return fetchTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(BuildContext context)? addTask,
    TResult Function(int id, bool completed)? updateTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String query)? searchTasks,
    required TResult orElse(),
  }) {
    if (fetchTasks != null) {
      return fetchTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTasks value) fetchTasks,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(SearchTasks value) searchTasks,
  }) {
    return fetchTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTasks value)? fetchTasks,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(SearchTasks value)? searchTasks,
  }) {
    return fetchTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTasks value)? fetchTasks,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(SearchTasks value)? searchTasks,
    required TResult orElse(),
  }) {
    if (fetchTasks != null) {
      return fetchTasks(this);
    }
    return orElse();
  }
}

abstract class FetchTasks implements TaskEvent {
  const factory FetchTasks() = _$FetchTasksImpl;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
          _$AddTaskImpl value, $Res Function(_$AddTaskImpl) then) =
      __$$AddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
      _$AddTaskImpl _value, $Res Function(_$AddTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$AddTaskImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AddTaskImpl implements AddTask {
  const _$AddTaskImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'TaskEvent.addTask(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      __$$AddTaskImplCopyWithImpl<_$AddTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(BuildContext context) addTask,
    required TResult Function(int id, bool completed) updateTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String query) searchTasks,
  }) {
    return addTask(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTasks,
    TResult? Function(BuildContext context)? addTask,
    TResult? Function(int id, bool completed)? updateTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String query)? searchTasks,
  }) {
    return addTask?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(BuildContext context)? addTask,
    TResult Function(int id, bool completed)? updateTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String query)? searchTasks,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTasks value) fetchTasks,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(SearchTasks value) searchTasks,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTasks value)? fetchTasks,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(SearchTasks value)? searchTasks,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTasks value)? fetchTasks,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(SearchTasks value)? searchTasks,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTask implements TaskEvent {
  const factory AddTask(final BuildContext context) = _$AddTaskImpl;

  BuildContext get context;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskImplCopyWith<$Res> {
  factory _$$UpdateTaskImplCopyWith(
          _$UpdateTaskImpl value, $Res Function(_$UpdateTaskImpl) then) =
      __$$UpdateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool completed});
}

/// @nodoc
class __$$UpdateTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateTaskImpl>
    implements _$$UpdateTaskImplCopyWith<$Res> {
  __$$UpdateTaskImplCopyWithImpl(
      _$UpdateTaskImpl _value, $Res Function(_$UpdateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? completed = null,
  }) {
    return _then(_$UpdateTaskImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateTaskImpl implements UpdateTask {
  const _$UpdateTaskImpl(this.id, this.completed);

  @override
  final int id;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TaskEvent.updateTask(id: $id, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, completed);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      __$$UpdateTaskImplCopyWithImpl<_$UpdateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(BuildContext context) addTask,
    required TResult Function(int id, bool completed) updateTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String query) searchTasks,
  }) {
    return updateTask(id, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTasks,
    TResult? Function(BuildContext context)? addTask,
    TResult? Function(int id, bool completed)? updateTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String query)? searchTasks,
  }) {
    return updateTask?.call(id, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(BuildContext context)? addTask,
    TResult Function(int id, bool completed)? updateTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String query)? searchTasks,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(id, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTasks value) fetchTasks,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(SearchTasks value) searchTasks,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTasks value)? fetchTasks,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(SearchTasks value)? searchTasks,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTasks value)? fetchTasks,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(SearchTasks value)? searchTasks,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class UpdateTask implements TaskEvent {
  const factory UpdateTask(final int id, final bool completed) =
      _$UpdateTaskImpl;

  int get id;
  bool get completed;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTaskImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl implements DeleteTask {
  const _$DeleteTaskImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TaskEvent.deleteTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(BuildContext context) addTask,
    required TResult Function(int id, bool completed) updateTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String query) searchTasks,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTasks,
    TResult? Function(BuildContext context)? addTask,
    TResult? Function(int id, bool completed)? updateTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String query)? searchTasks,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(BuildContext context)? addTask,
    TResult Function(int id, bool completed)? updateTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String query)? searchTasks,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTasks value) fetchTasks,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(SearchTasks value) searchTasks,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTasks value)? fetchTasks,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(SearchTasks value)? searchTasks,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTasks value)? fetchTasks,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(SearchTasks value)? searchTasks,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTask implements TaskEvent {
  const factory DeleteTask(final int id) = _$DeleteTaskImpl;

  int get id;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTasksImplCopyWith<$Res> {
  factory _$$SearchTasksImplCopyWith(
          _$SearchTasksImpl value, $Res Function(_$SearchTasksImpl) then) =
      __$$SearchTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$SearchTasksImpl>
    implements _$$SearchTasksImplCopyWith<$Res> {
  __$$SearchTasksImplCopyWithImpl(
      _$SearchTasksImpl _value, $Res Function(_$SearchTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchTasksImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTasksImpl implements SearchTasks {
  const _$SearchTasksImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'TaskEvent.searchTasks(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTasksImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTasksImplCopyWith<_$SearchTasksImpl> get copyWith =>
      __$$SearchTasksImplCopyWithImpl<_$SearchTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTasks,
    required TResult Function(BuildContext context) addTask,
    required TResult Function(int id, bool completed) updateTask,
    required TResult Function(int id) deleteTask,
    required TResult Function(String query) searchTasks,
  }) {
    return searchTasks(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTasks,
    TResult? Function(BuildContext context)? addTask,
    TResult? Function(int id, bool completed)? updateTask,
    TResult? Function(int id)? deleteTask,
    TResult? Function(String query)? searchTasks,
  }) {
    return searchTasks?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTasks,
    TResult Function(BuildContext context)? addTask,
    TResult Function(int id, bool completed)? updateTask,
    TResult Function(int id)? deleteTask,
    TResult Function(String query)? searchTasks,
    required TResult orElse(),
  }) {
    if (searchTasks != null) {
      return searchTasks(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTasks value) fetchTasks,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(SearchTasks value) searchTasks,
  }) {
    return searchTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTasks value)? fetchTasks,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(SearchTasks value)? searchTasks,
  }) {
    return searchTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTasks value)? fetchTasks,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(SearchTasks value)? searchTasks,
    required TResult orElse(),
  }) {
    if (searchTasks != null) {
      return searchTasks(this);
    }
    return orElse();
  }
}

abstract class SearchTasks implements TaskEvent {
  const factory SearchTasks(final String query) = _$SearchTasksImpl;

  String get query;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTasksImplCopyWith<_$SearchTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
