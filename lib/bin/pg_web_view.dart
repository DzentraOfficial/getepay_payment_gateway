import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pg_sdk_kit/bin/bloc/pg_bloc.dart';
import 'package:pg_sdk_kit/bin/model/pg_status_request.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PgWebView extends StatefulWidget {
  const PgWebView({Key? key, required this.url, required this.pgStatusRequest})
      : super(key: key);
  final String url;
  final PgStatusRequest pgStatusRequest;

  @override
  State<PgWebView> createState() => _PgWebViewState();
}

class _PgWebViewState extends State<PgWebView> {
  late final WebViewController _controller;
  final PgBloc bloc = PgBloc();
  bool isLoading = false;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xffffffff))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {
            setState(() {
              isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
            log('url: $url');
            if (url.contains('pgPaymentResponse')) {
              Future.delayed(const Duration(seconds: 5), () {
                bloc.add(
                    PgEvent.getInvoiceStatus(request: widget.pgStatusRequest));
              });

              // readJS();
            }
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  void readJS() async {
    var html = await _controller.runJavaScriptReturningResult('''
        function asd() {
            var box1 = window.document.getElementById("box1").getElementsByTagName("p");
            var arr = [];
            for(i = 0; i<=box1.length -1; i++ ) {
             arr.push(box1[i].innerText);
            };
            return arr;
          };
        
        asd();
        ''');
    List str = json.decode(html.toString());
    log(str.toString());
    // String paymentId = html[(html.indexOf('paymentId')) + 1];
    // log('paymentId: $paymentId');

    if (html.toString().contains('SUCCESS')) {
      log('Success');
    } else {
      log('Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocConsumer<PgBloc, PgState>(
          bloc: bloc,
          listener: (context, state) {
            if (state.status == PgStatus.success) {
              Navigator.pop(context, state.pgInvoiceResponse);
            }
            if (state.status == PgStatus.error) {
              Navigator.pop(context, state.error);
            }
          },
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              children: [
                WebViewWidget(
                  controller: _controller,
                ),
                if (isLoading) const CircularProgressIndicator(),
              ],
            );
          },
        ),
      ),
    );
  }
}
