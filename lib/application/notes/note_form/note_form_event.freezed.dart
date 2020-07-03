// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'note_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

  _Initialize initialize(Option<Note> initialNoteOption) {
    return _Initialize(
      initialNoteOption,
    );
  }

  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

  _ColorChanged colorChanged(Color color) {
    return _ColorChanged(
      color,
    );
  }

  _TodosChanged todosChanged(KtList<TodoItemPrimitives> todos) {
    return _TodosChanged(
      todos,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $NoteFormEvent = _$NoteFormEventTearOff();

mixin _$NoteFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Note> initialNoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitives> todos),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Note> initialNoteOption),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitives> todos),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({Option<Note> initialNoteOption});
}

class __$InitializeCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object initialNoteOption = freezed,
  }) {
    return _then(_Initialize(
      initialNoteOption == freezed
          ? _value.initialNoteOption
          : initialNoteOption as Option<Note>,
    ));
  }
}

class _$_Initialize implements _Initialize {
  const _$_Initialize(this.initialNoteOption)
      : assert(initialNoteOption != null);

  @override
  final Option<Note> initialNoteOption;

  @override
  String toString() {
    return 'NoteFormEvent.initialize(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
            (identical(other.initialNoteOption, initialNoteOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialNoteOption, initialNoteOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialNoteOption);

  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Note> initialNoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitives> todos),
    @required Result saved(),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return initialize(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Note> initialNoteOption),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitives> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(initialNoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements NoteFormEvent {
  const factory _Initialize(Option<Note> initialNoteOption) = _$_Initialize;

  Option<Note> get initialNoteOption;
  _$InitializeCopyWith<_Initialize> get copyWith;
}

abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

class __$BodyChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as String,
    ));
  }
}

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Note> initialNoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitives> todos),
    @required Result saved(),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Note> initialNoteOption),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitives> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color color});
}

class __$ColorChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_ColorChanged(
      color == freezed ? _value.color : color as Color,
    ));
  }
}

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color) : assert(color != null);

  @override
  final Color color;

  @override
  String toString() {
    return 'NoteFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Note> initialNoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitives> todos),
    @required Result saved(),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Note> initialNoteOption),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitives> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements NoteFormEvent {
  const factory _ColorChanged(Color color) = _$_ColorChanged;

  Color get color;
  _$ColorChangedCopyWith<_ColorChanged> get copyWith;
}

abstract class _$TodosChangedCopyWith<$Res> {
  factory _$TodosChangedCopyWith(
          _TodosChanged value, $Res Function(_TodosChanged) then) =
      __$TodosChangedCopyWithImpl<$Res>;
  $Res call({KtList<TodoItemPrimitives> todos});
}

class __$TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(
      _TodosChanged _value, $Res Function(_TodosChanged) _then)
      : super(_value, (v) => _then(v as _TodosChanged));

  @override
  _TodosChanged get _value => super._value as _TodosChanged;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(_TodosChanged(
      todos == freezed ? _value.todos : todos as KtList<TodoItemPrimitives>,
    ));
  }
}

class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.todos) : assert(todos != null);

  @override
  final KtList<TodoItemPrimitives> todos;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Note> initialNoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitives> todos),
    @required Result saved(),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Note> initialNoteOption),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitives> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteFormEvent {
  const factory _TodosChanged(KtList<TodoItemPrimitives> todos) =
      _$_TodosChanged;

  KtList<TodoItemPrimitives> get todos;
  _$TodosChangedCopyWith<_TodosChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Note> initialNoteOption),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitives> todos),
    @required Result saved(),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Note> initialNoteOption),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitives> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialize != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteFormEvent {
  const factory _Saved() = _$_Saved;
}
