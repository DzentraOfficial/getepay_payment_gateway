// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pg_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PgEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String terminalId, String mid, double amount,
            String name, int mobile)
        getLink,
    required TResult Function(PgStatusRequest request) getInvoiceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String terminalId, String mid, double amount, String name,
            int mobile)?
        getLink,
    TResult? Function(PgStatusRequest request)? getInvoiceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String terminalId, String mid, double amount, String name,
            int mobile)?
        getLink,
    TResult Function(PgStatusRequest request)? getInvoiceStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLink value) getLink,
    required TResult Function(_GetInvoiceStatus value) getInvoiceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLink value)? getLink,
    TResult? Function(_GetInvoiceStatus value)? getInvoiceStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLink value)? getLink,
    TResult Function(_GetInvoiceStatus value)? getInvoiceStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PgEventCopyWith<$Res> {
  factory $PgEventCopyWith(PgEvent value, $Res Function(PgEvent) then) =
      _$PgEventCopyWithImpl<$Res, PgEvent>;
}

/// @nodoc
class _$PgEventCopyWithImpl<$Res, $Val extends PgEvent>
    implements $PgEventCopyWith<$Res> {
  _$PgEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetLinkCopyWith<$Res> {
  factory _$$_GetLinkCopyWith(
          _$_GetLink value, $Res Function(_$_GetLink) then) =
      __$$_GetLinkCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String terminalId, String mid, double amount, String name, int mobile});
}

/// @nodoc
class __$$_GetLinkCopyWithImpl<$Res>
    extends _$PgEventCopyWithImpl<$Res, _$_GetLink>
    implements _$$_GetLinkCopyWith<$Res> {
  __$$_GetLinkCopyWithImpl(_$_GetLink _value, $Res Function(_$_GetLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terminalId = null,
    Object? mid = null,
    Object? amount = null,
    Object? name = null,
    Object? mobile = null,
  }) {
    return _then(_$_GetLink(
      terminalId: null == terminalId
          ? _value.terminalId
          : terminalId // ignore: cast_nullable_to_non_nullable
              as String,
      mid: null == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetLink implements _GetLink {
  const _$_GetLink(
      {required this.terminalId,
      required this.mid,
      required this.amount,
      required this.name,
      required this.mobile});

  @override
  final String terminalId;
  @override
  final String mid;
  @override
  final double amount;
  @override
  final String name;
  @override
  final int mobile;

  @override
  String toString() {
    return 'PgEvent.getLink(terminalId: $terminalId, mid: $mid, amount: $amount, name: $name, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLink &&
            (identical(other.terminalId, terminalId) ||
                other.terminalId == terminalId) &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, terminalId, mid, amount, name, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLinkCopyWith<_$_GetLink> get copyWith =>
      __$$_GetLinkCopyWithImpl<_$_GetLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String terminalId, String mid, double amount,
            String name, int mobile)
        getLink,
    required TResult Function(PgStatusRequest request) getInvoiceStatus,
  }) {
    return getLink(terminalId, mid, amount, name, mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String terminalId, String mid, double amount, String name,
            int mobile)?
        getLink,
    TResult? Function(PgStatusRequest request)? getInvoiceStatus,
  }) {
    return getLink?.call(terminalId, mid, amount, name, mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String terminalId, String mid, double amount, String name,
            int mobile)?
        getLink,
    TResult Function(PgStatusRequest request)? getInvoiceStatus,
    required TResult orElse(),
  }) {
    if (getLink != null) {
      return getLink(terminalId, mid, amount, name, mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLink value) getLink,
    required TResult Function(_GetInvoiceStatus value) getInvoiceStatus,
  }) {
    return getLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLink value)? getLink,
    TResult? Function(_GetInvoiceStatus value)? getInvoiceStatus,
  }) {
    return getLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLink value)? getLink,
    TResult Function(_GetInvoiceStatus value)? getInvoiceStatus,
    required TResult orElse(),
  }) {
    if (getLink != null) {
      return getLink(this);
    }
    return orElse();
  }
}

abstract class _GetLink implements PgEvent {
  const factory _GetLink(
      {required final String terminalId,
      required final String mid,
      required final double amount,
      required final String name,
      required final int mobile}) = _$_GetLink;

  String get terminalId;
  String get mid;
  double get amount;
  String get name;
  int get mobile;
  @JsonKey(ignore: true)
  _$$_GetLinkCopyWith<_$_GetLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetInvoiceStatusCopyWith<$Res> {
  factory _$$_GetInvoiceStatusCopyWith(
          _$_GetInvoiceStatus value, $Res Function(_$_GetInvoiceStatus) then) =
      __$$_GetInvoiceStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({PgStatusRequest request});

  $PgStatusRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_GetInvoiceStatusCopyWithImpl<$Res>
    extends _$PgEventCopyWithImpl<$Res, _$_GetInvoiceStatus>
    implements _$$_GetInvoiceStatusCopyWith<$Res> {
  __$$_GetInvoiceStatusCopyWithImpl(
      _$_GetInvoiceStatus _value, $Res Function(_$_GetInvoiceStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_GetInvoiceStatus(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as PgStatusRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PgStatusRequestCopyWith<$Res> get request {
    return $PgStatusRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetInvoiceStatus implements _GetInvoiceStatus {
  const _$_GetInvoiceStatus({required this.request});

  @override
  final PgStatusRequest request;

  @override
  String toString() {
    return 'PgEvent.getInvoiceStatus(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetInvoiceStatus &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetInvoiceStatusCopyWith<_$_GetInvoiceStatus> get copyWith =>
      __$$_GetInvoiceStatusCopyWithImpl<_$_GetInvoiceStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String terminalId, String mid, double amount,
            String name, int mobile)
        getLink,
    required TResult Function(PgStatusRequest request) getInvoiceStatus,
  }) {
    return getInvoiceStatus(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String terminalId, String mid, double amount, String name,
            int mobile)?
        getLink,
    TResult? Function(PgStatusRequest request)? getInvoiceStatus,
  }) {
    return getInvoiceStatus?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String terminalId, String mid, double amount, String name,
            int mobile)?
        getLink,
    TResult Function(PgStatusRequest request)? getInvoiceStatus,
    required TResult orElse(),
  }) {
    if (getInvoiceStatus != null) {
      return getInvoiceStatus(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLink value) getLink,
    required TResult Function(_GetInvoiceStatus value) getInvoiceStatus,
  }) {
    return getInvoiceStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLink value)? getLink,
    TResult? Function(_GetInvoiceStatus value)? getInvoiceStatus,
  }) {
    return getInvoiceStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLink value)? getLink,
    TResult Function(_GetInvoiceStatus value)? getInvoiceStatus,
    required TResult orElse(),
  }) {
    if (getInvoiceStatus != null) {
      return getInvoiceStatus(this);
    }
    return orElse();
  }
}

abstract class _GetInvoiceStatus implements PgEvent {
  const factory _GetInvoiceStatus({required final PgStatusRequest request}) =
      _$_GetInvoiceStatus;

  PgStatusRequest get request;
  @JsonKey(ignore: true)
  _$$_GetInvoiceStatusCopyWith<_$_GetInvoiceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PgState {
  PgRepo get repo => throw _privateConstructorUsedError;
  PgStatus get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  PgLinkResponse? get response => throw _privateConstructorUsedError;
  PgInvoiceResponse? get pgInvoiceResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PgStateCopyWith<PgState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PgStateCopyWith<$Res> {
  factory $PgStateCopyWith(PgState value, $Res Function(PgState) then) =
      _$PgStateCopyWithImpl<$Res, PgState>;
  @useResult
  $Res call(
      {PgRepo repo,
      PgStatus status,
      String error,
      PgLinkResponse? response,
      PgInvoiceResponse? pgInvoiceResponse});

  $PgLinkResponseCopyWith<$Res>? get response;
  $PgInvoiceResponseCopyWith<$Res>? get pgInvoiceResponse;
}

/// @nodoc
class _$PgStateCopyWithImpl<$Res, $Val extends PgState>
    implements $PgStateCopyWith<$Res> {
  _$PgStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repo = null,
    Object? status = null,
    Object? error = null,
    Object? response = freezed,
    Object? pgInvoiceResponse = freezed,
  }) {
    return _then(_value.copyWith(
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as PgRepo,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PgStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as PgLinkResponse?,
      pgInvoiceResponse: freezed == pgInvoiceResponse
          ? _value.pgInvoiceResponse
          : pgInvoiceResponse // ignore: cast_nullable_to_non_nullable
              as PgInvoiceResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PgLinkResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $PgLinkResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PgInvoiceResponseCopyWith<$Res>? get pgInvoiceResponse {
    if (_value.pgInvoiceResponse == null) {
      return null;
    }

    return $PgInvoiceResponseCopyWith<$Res>(_value.pgInvoiceResponse!, (value) {
      return _then(_value.copyWith(pgInvoiceResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PgStateCopyWith<$Res> implements $PgStateCopyWith<$Res> {
  factory _$$_PgStateCopyWith(
          _$_PgState value, $Res Function(_$_PgState) then) =
      __$$_PgStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PgRepo repo,
      PgStatus status,
      String error,
      PgLinkResponse? response,
      PgInvoiceResponse? pgInvoiceResponse});

  @override
  $PgLinkResponseCopyWith<$Res>? get response;
  @override
  $PgInvoiceResponseCopyWith<$Res>? get pgInvoiceResponse;
}

/// @nodoc
class __$$_PgStateCopyWithImpl<$Res>
    extends _$PgStateCopyWithImpl<$Res, _$_PgState>
    implements _$$_PgStateCopyWith<$Res> {
  __$$_PgStateCopyWithImpl(_$_PgState _value, $Res Function(_$_PgState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repo = null,
    Object? status = null,
    Object? error = null,
    Object? response = freezed,
    Object? pgInvoiceResponse = freezed,
  }) {
    return _then(_$_PgState(
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as PgRepo,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PgStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as PgLinkResponse?,
      pgInvoiceResponse: freezed == pgInvoiceResponse
          ? _value.pgInvoiceResponse
          : pgInvoiceResponse // ignore: cast_nullable_to_non_nullable
              as PgInvoiceResponse?,
    ));
  }
}

/// @nodoc

class _$_PgState implements _PgState {
  const _$_PgState(
      {required this.repo,
      this.status = PgStatus.initial,
      this.error = '',
      this.response,
      this.pgInvoiceResponse});

  @override
  final PgRepo repo;
  @override
  @JsonKey()
  final PgStatus status;
  @override
  @JsonKey()
  final String error;
  @override
  final PgLinkResponse? response;
  @override
  final PgInvoiceResponse? pgInvoiceResponse;

  @override
  String toString() {
    return 'PgState(repo: $repo, status: $status, error: $error, response: $response, pgInvoiceResponse: $pgInvoiceResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PgState &&
            (identical(other.repo, repo) || other.repo == repo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.pgInvoiceResponse, pgInvoiceResponse) ||
                other.pgInvoiceResponse == pgInvoiceResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, repo, status, error, response, pgInvoiceResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PgStateCopyWith<_$_PgState> get copyWith =>
      __$$_PgStateCopyWithImpl<_$_PgState>(this, _$identity);
}

abstract class _PgState implements PgState {
  const factory _PgState(
      {required final PgRepo repo,
      final PgStatus status,
      final String error,
      final PgLinkResponse? response,
      final PgInvoiceResponse? pgInvoiceResponse}) = _$_PgState;

  @override
  PgRepo get repo;
  @override
  PgStatus get status;
  @override
  String get error;
  @override
  PgLinkResponse? get response;
  @override
  PgInvoiceResponse? get pgInvoiceResponse;
  @override
  @JsonKey(ignore: true)
  _$$_PgStateCopyWith<_$_PgState> get copyWith =>
      throw _privateConstructorUsedError;
}
