import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pg_sdk_kit/bin/bloc/pg_bloc.dart';
import 'package:pg_sdk_kit/bin/model/pg_invoice_response.dart';
import 'package:pg_sdk_kit/bin/model/pg_status_request.dart';
import 'package:pg_sdk_kit/bin/networking/api_url.dart';
import 'package:pg_sdk_kit/bin/pg_web_view.dart';

class PGKit extends StatelessWidget {
  const PGKit({
    Key? key,
    required this.terminalId,
    required this.mid,
    required this.amount,
    required this.name,
    required this.mobile,
    required this.child,
    required this.onError,
    required this.onSuccess,
    required this.test,
  }) : super(key: key);

  final String terminalId;
  final String mid;
  final double amount;
  final String name;
  final int mobile;
  final Widget child;
  final Function(String error) onError;
  final Function(PgInvoiceResponse success) onSuccess;
  final bool test;

  @override
  Widget build(BuildContext context) {
    ApiUrl.kTest = test;
    return BlocProvider(
      create: (context) => PgBloc(),
      child: _PGKit(
        terminalId: terminalId,
        mid: mid,
        amount: amount,
        name: name,
        mobile: mobile,
        onError: onError,
        onSuccess: onSuccess,
        child: child,
      ),
    );
  }
}

class _PGKit extends StatelessWidget {
  const _PGKit({
    Key? key,
    required this.terminalId,
    required this.mid,
    required this.amount,
    required this.name,
    required this.mobile,
    required this.child,
    required this.onError,
    required this.onSuccess,
  }) : super(key: key);

  final String terminalId;
  final String mid;
  final double amount;
  final String name;
  final int mobile;
  final Widget child;
  final Function(String error) onError;
  final Function(PgInvoiceResponse success) onSuccess;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PgBloc, PgState>(
        builder: (context, state) {
          return state.status == PgStatus.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : InkWell(
                  onTap: () {
                    context.read<PgBloc>().add(
                          PgEvent.getLink(
                            mid: mid,
                            name: name,
                            amount: amount,
                            mobile: mobile,
                            terminalId: terminalId,
                          ),
                        );
                  },
                  child: child,
                );
        },
        listener: (context, state) {
          if (state.status == PgStatus.success && state.response != null) {
            // TODO: REMOVE THIS CONDITION OF PG/PAYMENT
            late String url;
            // if (state.response!.paymentUrl.contains("pg/payment")) {
            //   url = state.response!.paymentUrl
            //       .replaceAll("pg/payment", "invoice/item_invoicePaymentPage");
            // }

            url = state.response!.paymentUrl;

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PgWebView(
                  url: url,
                  pgStatusRequest: PgStatusRequest(
                    terminalId: terminalId,
                    mid: mid,
                    paymentId: state.response!.paymentId,
                  ),
                ),
              ),
            ).then((value) {
              if (value != null) {
                if (value is String) {
                  onError(value);
                } else {
                  onSuccess(value);
                }
              } else {
                onError('Something went wrong');
              }
            });
          }

          if (state.status == PgStatus.error) {
            onError(state.error);
          }
        },
      ),
    );
  }
}
