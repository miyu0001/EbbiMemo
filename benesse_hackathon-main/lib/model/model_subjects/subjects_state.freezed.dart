// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of '../../subjects_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubjectsStateTearOff {
  const _$SubjectsStateTearOff();

  _SubjectsState call({List<Subject> subjectList = const <Subject>[]}) {
    return _SubjectsState(
      subjectList: subjectList,
    );
  }
}

/// @nodoc
const $SubjectsState = _$SubjectsStateTearOff();

/// @nodoc
mixin _$SubjectsState {
  List<Subject> get subjectList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubjectsStateCopyWith<SubjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsStateCopyWith<$Res> {
  factory $SubjectsStateCopyWith(
          SubjectsState value, $Res Function(SubjectsState) then) =
      _$SubjectsStateCopyWithImpl<$Res>;
  $Res call({List<Subject> subjectList});
}

/// @nodoc
class _$SubjectsStateCopyWithImpl<$Res>
    implements $SubjectsStateCopyWith<$Res> {
  _$SubjectsStateCopyWithImpl(this._value, this._then);

  final SubjectsState _value;
  // ignore: unused_field
  final $Res Function(SubjectsState) _then;

  @override
  $Res call({
    Object? subjectList = freezed,
  }) {
    return _then(_value.copyWith(
      subjectList: subjectList == freezed
          ? _value.subjectList
          : subjectList // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc
abstract class _$SubjectsStateCopyWith<$Res>
    implements $SubjectsStateCopyWith<$Res> {
  factory _$SubjectsStateCopyWith(
          _SubjectsState value, $Res Function(_SubjectsState) then) =
      __$SubjectsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Subject> subjectList});
}

/// @nodoc
class __$SubjectsStateCopyWithImpl<$Res>
    extends _$SubjectsStateCopyWithImpl<$Res>
    implements _$SubjectsStateCopyWith<$Res> {
  __$SubjectsStateCopyWithImpl(
      _SubjectsState _value, $Res Function(_SubjectsState) _then)
      : super(_value, (v) => _then(v as _SubjectsState));

  @override
  _SubjectsState get _value => super._value as _SubjectsState;

  @override
  $Res call({
    Object? subjectList = freezed,
  }) {
    return _then(_SubjectsState(
      subjectList: subjectList == freezed
          ? _value.subjectList
          : subjectList // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc

class _$_SubjectsState with DiagnosticableTreeMixin implements _SubjectsState {
  const _$_SubjectsState({this.subjectList = const <Subject>[]});

  @JsonKey(defaultValue: const <Subject>[])
  @override
  final List<Subject> subjectList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubjectsState(subjectList: $subjectList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubjectsState'))
      ..add(DiagnosticsProperty('subjectList', subjectList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubjectsState &&
            (identical(other.subjectList, subjectList) ||
                const DeepCollectionEquality()
                    .equals(other.subjectList, subjectList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subjectList);

  @JsonKey(ignore: true)
  @override
  _$SubjectsStateCopyWith<_SubjectsState> get copyWith =>
      __$SubjectsStateCopyWithImpl<_SubjectsState>(this, _$identity);
}

abstract class _SubjectsState implements SubjectsState {
  const factory _SubjectsState({List<Subject> subjectList}) = _$_SubjectsState;

  @override
  List<Subject> get subjectList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubjectsStateCopyWith<_SubjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}
