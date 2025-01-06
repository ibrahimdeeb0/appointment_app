// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(List<ProfileModel> profileData)
        profileDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileDataLoading<T> value) profileDataLoading,
    required TResult Function(ProfileDataSuccess<T> value) profileDataSuccess,
    required TResult Function(ProfileDataError<T> value) profileDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult? Function(ProfileDataError<T> value)? profileDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult Function(ProfileDataError<T> value)? profileDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<T, $Res> {
  factory $ProfileStateCopyWith(
          ProfileState<T> value, $Res Function(ProfileState<T>) then) =
      _$ProfileStateCopyWithImpl<T, $Res, ProfileState<T>>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<T, $Res, $Val extends ProfileState<T>>
    implements $ProfileStateCopyWith<T, $Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(List<ProfileModel> profileData)
        profileDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileDataError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileDataError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileDataError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileDataLoading<T> value) profileDataLoading,
    required TResult Function(ProfileDataSuccess<T> value) profileDataSuccess,
    required TResult Function(ProfileDataError<T> value) profileDataError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult? Function(ProfileDataError<T> value)? profileDataError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult Function(ProfileDataError<T> value)? profileDataError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ProfileState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ProfileDataLoadingImplCopyWith<T, $Res> {
  factory _$$ProfileDataLoadingImplCopyWith(_$ProfileDataLoadingImpl<T> value,
          $Res Function(_$ProfileDataLoadingImpl<T>) then) =
      __$$ProfileDataLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProfileDataLoadingImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$ProfileDataLoadingImpl<T>>
    implements _$$ProfileDataLoadingImplCopyWith<T, $Res> {
  __$$ProfileDataLoadingImplCopyWithImpl(_$ProfileDataLoadingImpl<T> _value,
      $Res Function(_$ProfileDataLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileDataLoadingImpl<T> implements ProfileDataLoading<T> {
  const _$ProfileDataLoadingImpl();

  @override
  String toString() {
    return 'ProfileState<$T>.profileDataLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(List<ProfileModel> profileData)
        profileDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileDataError,
  }) {
    return profileDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileDataError,
  }) {
    return profileDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileDataError,
    required TResult orElse(),
  }) {
    if (profileDataLoading != null) {
      return profileDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileDataLoading<T> value) profileDataLoading,
    required TResult Function(ProfileDataSuccess<T> value) profileDataSuccess,
    required TResult Function(ProfileDataError<T> value) profileDataError,
  }) {
    return profileDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult? Function(ProfileDataError<T> value)? profileDataError,
  }) {
    return profileDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult Function(ProfileDataError<T> value)? profileDataError,
    required TResult orElse(),
  }) {
    if (profileDataLoading != null) {
      return profileDataLoading(this);
    }
    return orElse();
  }
}

abstract class ProfileDataLoading<T> implements ProfileState<T> {
  const factory ProfileDataLoading() = _$ProfileDataLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ProfileDataSuccessImplCopyWith<T, $Res> {
  factory _$$ProfileDataSuccessImplCopyWith(_$ProfileDataSuccessImpl<T> value,
          $Res Function(_$ProfileDataSuccessImpl<T>) then) =
      __$$ProfileDataSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<ProfileModel> profileData});
}

/// @nodoc
class __$$ProfileDataSuccessImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$ProfileDataSuccessImpl<T>>
    implements _$$ProfileDataSuccessImplCopyWith<T, $Res> {
  __$$ProfileDataSuccessImplCopyWithImpl(_$ProfileDataSuccessImpl<T> _value,
      $Res Function(_$ProfileDataSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
  }) {
    return _then(_$ProfileDataSuccessImpl<T>(
      null == profileData
          ? _value._profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
    ));
  }
}

/// @nodoc

class _$ProfileDataSuccessImpl<T> implements ProfileDataSuccess<T> {
  const _$ProfileDataSuccessImpl(final List<ProfileModel> profileData)
      : _profileData = profileData;

  final List<ProfileModel> _profileData;
  @override
  List<ProfileModel> get profileData {
    if (_profileData is EqualUnmodifiableListView) return _profileData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profileData);
  }

  @override
  String toString() {
    return 'ProfileState<$T>.profileDataSuccess(profileData: $profileData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._profileData, _profileData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_profileData));

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataSuccessImplCopyWith<T, _$ProfileDataSuccessImpl<T>>
      get copyWith => __$$ProfileDataSuccessImplCopyWithImpl<T,
          _$ProfileDataSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(List<ProfileModel> profileData)
        profileDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileDataError,
  }) {
    return profileDataSuccess(profileData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileDataError,
  }) {
    return profileDataSuccess?.call(profileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileDataError,
    required TResult orElse(),
  }) {
    if (profileDataSuccess != null) {
      return profileDataSuccess(profileData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileDataLoading<T> value) profileDataLoading,
    required TResult Function(ProfileDataSuccess<T> value) profileDataSuccess,
    required TResult Function(ProfileDataError<T> value) profileDataError,
  }) {
    return profileDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult? Function(ProfileDataError<T> value)? profileDataError,
  }) {
    return profileDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult Function(ProfileDataError<T> value)? profileDataError,
    required TResult orElse(),
  }) {
    if (profileDataSuccess != null) {
      return profileDataSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileDataSuccess<T> implements ProfileState<T> {
  const factory ProfileDataSuccess(final List<ProfileModel> profileData) =
      _$ProfileDataSuccessImpl<T>;

  List<ProfileModel> get profileData;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataSuccessImplCopyWith<T, _$ProfileDataSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileDataErrorImplCopyWith<T, $Res> {
  factory _$$ProfileDataErrorImplCopyWith(_$ProfileDataErrorImpl<T> value,
          $Res Function(_$ProfileDataErrorImpl<T>) then) =
      __$$ProfileDataErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ProfileDataErrorImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$ProfileDataErrorImpl<T>>
    implements _$$ProfileDataErrorImplCopyWith<T, $Res> {
  __$$ProfileDataErrorImplCopyWithImpl(_$ProfileDataErrorImpl<T> _value,
      $Res Function(_$ProfileDataErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ProfileDataErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ProfileDataErrorImpl<T> implements ProfileDataError<T> {
  const _$ProfileDataErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'ProfileState<$T>.profileDataError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataErrorImplCopyWith<T, _$ProfileDataErrorImpl<T>> get copyWith =>
      __$$ProfileDataErrorImplCopyWithImpl<T, _$ProfileDataErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(List<ProfileModel> profileData)
        profileDataSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileDataError,
  }) {
    return profileDataError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileDataError,
  }) {
    return profileDataError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(List<ProfileModel> profileData)? profileDataSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileDataError,
    required TResult orElse(),
  }) {
    if (profileDataError != null) {
      return profileDataError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileDataLoading<T> value) profileDataLoading,
    required TResult Function(ProfileDataSuccess<T> value) profileDataSuccess,
    required TResult Function(ProfileDataError<T> value) profileDataError,
  }) {
    return profileDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult? Function(ProfileDataError<T> value)? profileDataError,
  }) {
    return profileDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileDataLoading<T> value)? profileDataLoading,
    TResult Function(ProfileDataSuccess<T> value)? profileDataSuccess,
    TResult Function(ProfileDataError<T> value)? profileDataError,
    required TResult orElse(),
  }) {
    if (profileDataError != null) {
      return profileDataError(this);
    }
    return orElse();
  }
}

abstract class ProfileDataError<T> implements ProfileState<T> {
  const factory ProfileDataError(final ApiErrorModel apiErrorModel) =
      _$ProfileDataErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataErrorImplCopyWith<T, _$ProfileDataErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
