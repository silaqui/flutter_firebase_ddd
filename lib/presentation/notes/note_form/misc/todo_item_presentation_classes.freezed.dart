// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_item_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TodoItemPrimitivesTearOff {
  const _$TodoItemPrimitivesTearOff();

// ignore: unused_element
  _TodoItemPrimitives call(
      {@required UniqueId id, @required String name, @required bool done}) {
    return _TodoItemPrimitives(
      id: id,
      name: name,
      done: done,
    );
  }
}

// ignore: unused_element
const $TodoItemPrimitives = _$TodoItemPrimitivesTearOff();

mixin _$TodoItemPrimitives {
  UniqueId get id;
  String get name;
  bool get done;

  $TodoItemPrimitivesCopyWith<TodoItemPrimitives> get copyWith;
}

abstract class $TodoItemPrimitivesCopyWith<$Res> {
  factory $TodoItemPrimitivesCopyWith(
          TodoItemPrimitives value, $Res Function(TodoItemPrimitives) then) =
      _$TodoItemPrimitivesCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name, bool done});
}

class _$TodoItemPrimitivesCopyWithImpl<$Res>
    implements $TodoItemPrimitivesCopyWith<$Res> {
  _$TodoItemPrimitivesCopyWithImpl(this._value, this._then);

  final TodoItemPrimitives _value;
  // ignore: unused_field
  final $Res Function(TodoItemPrimitives) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

abstract class _$TodoItemPrimitivesCopyWith<$Res>
    implements $TodoItemPrimitivesCopyWith<$Res> {
  factory _$TodoItemPrimitivesCopyWith(
          _TodoItemPrimitives value, $Res Function(_TodoItemPrimitives) then) =
      __$TodoItemPrimitivesCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name, bool done});
}

class __$TodoItemPrimitivesCopyWithImpl<$Res>
    extends _$TodoItemPrimitivesCopyWithImpl<$Res>
    implements _$TodoItemPrimitivesCopyWith<$Res> {
  __$TodoItemPrimitivesCopyWithImpl(
      _TodoItemPrimitives _value, $Res Function(_TodoItemPrimitives) _then)
      : super(_value, (v) => _then(v as _TodoItemPrimitives));

  @override
  _TodoItemPrimitives get _value => super._value as _TodoItemPrimitives;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _then(_TodoItemPrimitives(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

class _$_TodoItemPrimitives extends _TodoItemPrimitives {
  const _$_TodoItemPrimitives(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null),
        super._();

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'TodoItemPrimitives(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoItemPrimitives &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$TodoItemPrimitivesCopyWith<_TodoItemPrimitives> get copyWith =>
      __$TodoItemPrimitivesCopyWithImpl<_TodoItemPrimitives>(this, _$identity);
}

abstract class _TodoItemPrimitives extends TodoItemPrimitives {
  const _TodoItemPrimitives._() : super._();
  const factory _TodoItemPrimitives(
      {@required UniqueId id,
      @required String name,
      @required bool done}) = _$_TodoItemPrimitives;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  bool get done;
  @override
  _$TodoItemPrimitivesCopyWith<_TodoItemPrimitives> get copyWith;
}
