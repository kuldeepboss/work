import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:teacher_attendance/widget/flutter_toast.dart';

var companyId;

class GlobalData {
  ///Staging call API
  static const String baseUrl = "https://staging-api.traceablegiving.org/data/";
  static const String newBaseUrl = "https://staging.traceablegiving.org/login/fun/";

  /// Live call API
  // static const String baseUrl = "https://apiv2.traceablegiving.org/data/";
  // static const String newBaseUrl = "https://traceablegiving.org/login/fun/";

  Future httpClientRequestBaseUrl(
      {required Map mapData, required String pageName}) async {
    try {
      final loginUrl = Uri.parse('$baseUrl$pageName');
      log(jsonEncode(mapData));
      final response = await http.post(loginUrl, body: mapData);
      String reply = response.body;
      log(reply);
      if (response.statusCode == 200) {
        return jsonDecode(reply);
      } else {
        if (response.statusCode == 404) {
          return data1;
        } else {
          return data;
        }
      }
    } on SocketException {
      FlutterToast().flutterToastWidget("Please Connect Internet!");
    }
  }

  Map data = {
    'status_code': 100,
    'message': 'Server Error',
  };
  Map data1 = {
    'status_code': 100,
    'message': 'Page Not Found',
  };
}
