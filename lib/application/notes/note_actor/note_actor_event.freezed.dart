// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_actor_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteActorEventTearOff {
  const _$NoteActorEventTearOff();

// ignore: unused_element
  _Delete delete(Note note) {
    return _Delete(
      note,
    );
  }
}

// ignore: unused_element
const $NoteActorEvent = _$NoteActorEventTearOff();

mixin _$NoteActorEvent {
  Note get note;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Note note),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Note note),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    @required Result orElse(),
  });

  $NoteActorEventCopyWith<NoteActorEvent> get copyWith;
}

abstract class $NoteActorEventCopyWith<$Res> {
  factory $NoteActorEventCopyWith(
          NoteActorEvent value, $Res Function(NoteActorEvent) then) =
      _$NoteActorEventCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

class _$NoteActorEventCopyWithImpl<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  _$NoteActorEventCopyWithImpl(this._value, this._then);

  final NoteActorEvent _value;
  // ignore: unused_field
  final $Res Function(NoteActorEvent) _then;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed ? _value.note : note as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    if (_value.note == null) {
      return null;
    }
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

abstract class _$DeleteCopyWith<$Res> implements $NoteActorEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

class __$DeleteCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_Delete(
      note == freezed ? _value.note : note as Note,
    ));
  }
}

class _$_Delete implements _Delete {
  const _$_Delete(this.note) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.delete(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Note note),
  }) {
    assert(delete != null);
    return delete(note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Note note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
  }) {
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements NoteActorEvent {
  const factory _Delete(Note note) = _$_Delete;

  @override
  Note get note;
  @override
  _$DeleteCopyWith<_Delete> get copyWith;
}
