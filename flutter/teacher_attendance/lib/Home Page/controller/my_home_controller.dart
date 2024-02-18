import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teacher_attendance/Sync%20Data/sync_data.dart';

import '../../Dashboard Page/UI/dashboard_page.dart';
import '../../Take Attendance/take_attendance.dart';
import '../../Teacher Profile/UI/teacher_profile.dart';

class MyHomeController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    // TODO: implement onInit
    getArgument();
    super.onInit();
  }

  late SharedPreferences preference;

  String parentId = '';
  void getArgument() async {
    change(selectedIndex, status: RxStatus.success());
    preference = await SharedPreferences.getInstance();
    parentId = preference.getString('parent_id')!;
    await SyncData().teacherProfileData(parentId);
  }

  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }

  List<Widget> children = [
    const DashboardPage(),
    const CameraScreen(),
    const TeacherProfile(),
  ];

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
