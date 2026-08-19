// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'features_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeaturesModel {

@JsonKey(name: Keys.specialFinalCoaching, defaultValue: false) bool get specialFinalCoaching;
/// Create a copy of FeaturesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeaturesModelCopyWith<FeaturesModel> get copyWith => _$FeaturesModelCopyWithImpl<FeaturesModel>(this as FeaturesModel, _$identity);

  /// Serializes this FeaturesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeaturesModel&&(identical(other.specialFinalCoaching, specialFinalCoaching) || other.specialFinalCoaching == specialFinalCoaching));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,specialFinalCoaching);

@override
String toString() {
  return 'FeaturesModel(specialFinalCoaching: $specialFinalCoaching)';
}


}

/// @nodoc
abstract mixin class $FeaturesModelCopyWith<$Res>  {
  factory $FeaturesModelCopyWith(FeaturesModel value, $Res Function(FeaturesModel) _then) = _$FeaturesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: Keys.specialFinalCoaching, defaultValue: false) bool specialFinalCoaching
});




}
/// @nodoc
class _$FeaturesModelCopyWithImpl<$Res>
    implements $FeaturesModelCopyWith<$Res> {
  _$FeaturesModelCopyWithImpl(this._self, this._then);

  final FeaturesModel _self;
  final $Res Function(FeaturesModel) _then;

/// Create a copy of FeaturesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? specialFinalCoaching = null,}) {
  return _then(_self.copyWith(
specialFinalCoaching: null == specialFinalCoaching ? _self.specialFinalCoaching : specialFinalCoaching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FeaturesModel].
extension FeaturesModelPatterns on FeaturesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeaturesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeaturesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeaturesModel value)  $default,){
final _that = this;
switch (_that) {
case _FeaturesModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeaturesModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeaturesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: Keys.specialFinalCoaching, defaultValue: false)  bool specialFinalCoaching)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeaturesModel() when $default != null:
return $default(_that.specialFinalCoaching);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: Keys.specialFinalCoaching, defaultValue: false)  bool specialFinalCoaching)  $default,) {final _that = this;
switch (_that) {
case _FeaturesModel():
return $default(_that.specialFinalCoaching);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: Keys.specialFinalCoaching, defaultValue: false)  bool specialFinalCoaching)?  $default,) {final _that = this;
switch (_that) {
case _FeaturesModel() when $default != null:
return $default(_that.specialFinalCoaching);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeaturesModel implements FeaturesModel {
  const _FeaturesModel({@JsonKey(name: Keys.specialFinalCoaching, defaultValue: false) required this.specialFinalCoaching});
  factory _FeaturesModel.fromJson(Map<String, dynamic> json) => _$FeaturesModelFromJson(json);

@override@JsonKey(name: Keys.specialFinalCoaching, defaultValue: false) final  bool specialFinalCoaching;

/// Create a copy of FeaturesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeaturesModelCopyWith<_FeaturesModel> get copyWith => __$FeaturesModelCopyWithImpl<_FeaturesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeaturesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeaturesModel&&(identical(other.specialFinalCoaching, specialFinalCoaching) || other.specialFinalCoaching == specialFinalCoaching));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,specialFinalCoaching);

@override
String toString() {
  return 'FeaturesModel(specialFinalCoaching: $specialFinalCoaching)';
}


}

/// @nodoc
abstract mixin class _$FeaturesModelCopyWith<$Res> implements $FeaturesModelCopyWith<$Res> {
  factory _$FeaturesModelCopyWith(_FeaturesModel value, $Res Function(_FeaturesModel) _then) = __$FeaturesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: Keys.specialFinalCoaching, defaultValue: false) bool specialFinalCoaching
});




}
/// @nodoc
class __$FeaturesModelCopyWithImpl<$Res>
    implements _$FeaturesModelCopyWith<$Res> {
  __$FeaturesModelCopyWithImpl(this._self, this._then);

  final _FeaturesModel _self;
  final $Res Function(_FeaturesModel) _then;

/// Create a copy of FeaturesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? specialFinalCoaching = null,}) {
  return _then(_FeaturesModel(
specialFinalCoaching: null == specialFinalCoaching ? _self.specialFinalCoaching : specialFinalCoaching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
