import 'package:freezed_annotation/freezed_annotation.dart';

part 'pg_request.freezed.dart';
part 'pg_request.g.dart';

@freezed
class PgRequest with _$PgRequest {
  factory PgRequest({
    required double amount,
    required String currency,
    required int merchantTransactionId,
    required int mid,
    required String paymentMode,
    required String productType,
    required String terminalId,
    required String transactionDate,
    @Default('Dynamic') String txnNote,
    @Default('single') String txnType,
    required int udf1,
    @Default('NA') String udf2,
    required String udf3,
    required String ru,
  }) = _PgRequest;

  factory PgRequest.fromJson(Map<String, Object?> json) =>
      _$PgRequestFromJson(json);
}
