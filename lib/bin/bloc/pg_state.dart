part of 'pg_bloc.dart';

@freezed
class PgState with _$PgState {
  const factory PgState({
    required PgRepo repo,
    @Default(PgStatus.initial) PgStatus status,
    @Default('') String error,
    PgLinkResponse? response,
    PgInvoiceResponse? pgInvoiceResponse,
  }) = _PgState;
}

enum PgStatus {
  initial,
  loading,
  error,
  toastError,
  success,
}
