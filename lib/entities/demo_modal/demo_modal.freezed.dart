// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'demo_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DemoModal _$DemoModalFromJson(Map<String, dynamic> json) {
  return _DemoModal.fromJson(json);
}

/// @nodoc
mixin _$DemoModal {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DemoModalCopyWith<DemoModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoModalCopyWith<$Res> {
  factory $DemoModalCopyWith(DemoModal value, $Res Function(DemoModal) then) =
      _$DemoModalCopyWithImpl<$Res>;
  $Res call({String id, String name, String phoneNumber});
}

/// @nodoc
class _$DemoModalCopyWithImpl<$Res> implements $DemoModalCopyWith<$Res> {
  _$DemoModalCopyWithImpl(this._value, this._then);

  final DemoModal _value;
  // ignore: unused_field
  final $Res Function(DemoModal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DemoModalCopyWith<$Res> implements $DemoModalCopyWith<$Res> {
  factory _$DemoModalCopyWith(
          _DemoModal value, $Res Function(_DemoModal) then) =
      __$DemoModalCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String phoneNumber});
}

/// @nodoc
class __$DemoModalCopyWithImpl<$Res> extends _$DemoModalCopyWithImpl<$Res>
    implements _$DemoModalCopyWith<$Res> {
  __$DemoModalCopyWithImpl(_DemoModal _value, $Res Function(_DemoModal) _then)
      : super(_value, (v) => _then(v as _DemoModal));

  @override
  _DemoModal get _value => super._value as _DemoModal;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_DemoModal(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DemoModal extends _DemoModal {
  const _$_DemoModal(
      {required this.id, required this.name, required this.phoneNumber})
      : super._();

  factory _$_DemoModal.fromJson(Map<String, dynamic> json) =>
      _$$_DemoModalFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'DemoModal(id: $id, name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DemoModal &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$DemoModalCopyWith<_DemoModal> get copyWith =>
      __$DemoModalCopyWithImpl<_DemoModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DemoModalToJson(this);
  }
}

abstract class _DemoModal extends DemoModal {
  const factory _DemoModal(
      {required final String id,
      required final String name,
      required final String phoneNumber}) = _$_DemoModal;
  const _DemoModal._() : super._();

  factory _DemoModal.fromJson(Map<String, dynamic> json) =
      _$_DemoModal.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DemoModalCopyWith<_DemoModal> get copyWith =>
      throw _privateConstructorUsedError;
}
