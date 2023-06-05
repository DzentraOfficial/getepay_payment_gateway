part of 'pg_bloc.dart';

@freezed
class PgEvent with _$PgEvent {
  const factory PgEvent.getLink({
    required String terminalId,
    required String mid,
    required double amount,
    required String name,
    required int mobile,
  }) = _GetLink;

  const factory PgEvent.getInvoiceStatus({
    required PgStatusRequest request,
  }) = _GetInvoiceStatus;
}
