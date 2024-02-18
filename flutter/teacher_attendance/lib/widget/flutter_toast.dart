import 'package:fluttertoast/fluttertoast.dart';

class FlutterToast {
  void flutterToastWidget(String mag) {
    Fluttertoast.showToast(
      msg: mag,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
    );
  }
}
