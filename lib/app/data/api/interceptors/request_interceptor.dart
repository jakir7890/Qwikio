import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../../../app_pkg.dart';

FutureOr<Request> requestInterceptor(request) async {
  final token = StorageService.read(StorageConstants.accessToken);
  printLog(token);

  if (token != null) {
    request.headers['X-Requested-With'] = 'XMLHttpRequest';
    request.headers['Authorization'] = 'Bearer $token';
  }
  if(request.method!='get'){
    EasyLoading.show(status: 'loading...');
  }
  requestlLogger(request);
  return request;
}

void requestlLogger(Request request) {
  debugPrint('Url====: ${request.method} ${request.url}\n');
}
