import 'package:freezed_annotation/freezed_annotation.dart';

part 'pg_invoice_response.freezed.dart';
part 'pg_invoice_response.g.dart';

@freezed
class PgInvoiceResponse with _$PgInvoiceResponse {
  factory PgInvoiceResponse({
    required String getepayTxnId,
    required String mid,
    required String txnAmount,
    required String txnStatus,
    required String merchantOrderNo,
    required String udf1,
    required String udf2,
    required String udf3,
    required String udf4,
    required String udf5,
    required String udf6,
    required String udf7,
    required String udf8,
    required String udf9,
    required String udf10,
    required String udf41,
    required String paymentMode,
    required String discriminator,
    required String message,
    required String paymentStatus,
  }) = _PgInvoiceResponse;

  factory PgInvoiceResponse.fromJson(Map<String, Object?> json) =>
      _$PgInvoiceResponseFromJson(json);
}
