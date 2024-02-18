import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_attendance/Api/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constdata/global_data.dart';

class LoginController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    // TODO: implement onInit
    getArgument();
    super.onInit();
  }

  void getArgument() async {
    change(emailController, status: RxStatus.success());
    update();
  }

  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  bool secureText = true;

  void showText() {
    secureText = !secureText;
    update();
  }

  late SharedPreferences preference;

  Future<dynamic> getLoginDetails() async {
    preference = await SharedPreferences.getInstance();
    return Provider()
        .getLoginData(
      emailController.text.trim(),
      passController.text.trim(),
      '1',
    )
        .then(
          (value) async {
        if (value['response'] == '1') {
          preference.setBool('is_login', true);
          print(value['parent_id']);
          preference.setString('parent_id', value['parent_id']);
          preference.setString('org_name', value['org_name']);
          preference.setString('company_id', value['company_id']);
          companyId = preference.getString('company_id');
          update();
        }
      },
    );
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
