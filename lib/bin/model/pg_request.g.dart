// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pg_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PgRequest _$$_PgRequestFromJson(Map<String, dynamic> json) => _$_PgRequest(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      merchantTransactionId: json['merchantTransactionId'] as int,
      mid: json['mid'] as int,
      paymentMode: json['paymentMode'] as String,
      productType: json['productType'] as String,
      terminalId: json['terminalId'] as String,
      transactionDate: json['transactionDate'] as String,
      txnNote: json['txnNote'] as String? ?? 'Dynamic',
      txnType: json['txnType'] as String? ?? 'single',
      udf1: json['udf1'] as int,
      udf2: json['udf2'] as String? ?? 'NA',
      udf3: json['udf3'] as String,
      ru: json['ru'] as String,
    );

Map<String, dynamic> _$$_PgRequestToJson(_$_PgRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'merchantTransactionId': instance.merchantTransactionId,
      'mid': instance.mid,
      'paymentMode': instance.paymentMode,
      'productType': instance.productType,
      'terminalId': instance.terminalId,
      'transactionDate': instance.transactionDate,
      'txnNote': instance.txnNote,
      'txnType': instance.txnType,
      'udf1': instance.udf1,
      'udf2': instance.udf2,
      'udf3': instance.udf3,
      'ru': instance.ru,
    };
