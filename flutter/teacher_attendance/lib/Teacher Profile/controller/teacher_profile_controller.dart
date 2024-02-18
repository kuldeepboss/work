import 'package:get/get.dart';

import '../../Local Database/database_helper.dart';

class TeacherProfileController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    // TODO: implement onInit
    getArgument();
    super.onInit();
  }

  void getArgument() async {
    await teacherProfileData();
  }

  var db = DBHelper();

  List bp_tal_id = [];
  List bp_id = [];
  List full_name = [];
  List designation = [];
  List bp_email = [];
  List bp_mobile_no = [];
  List attendanceConfiguration = [];

  Future<dynamic> teacherProfileData() async {
    return db.teacherDataShow().then((value) {
      bp_tal_id = [];
      bp_id = [];
      full_name = [];
      designation = [];
      bp_email = [];
      bp_mobile_no = [];
      attendanceConfiguration = [];
      for (var i = 0; i < value.length; i++) {
        bp_tal_id.add(value[i]['bp_tal_id']);
        bp_id.add(value[i]['bp_id']);
        full_name.add(value[i]['full_name']);
          designation.add(value[i]['designation']);
        bp_email.add(value[i]['bp_email']);
        bp_mobile_no.add(value[i]['bp_mobile_no']);
        attendanceConfiguration.add(value[i]['attendanceConfiguration']);
      }
      if (bp_id.isNotEmpty) {
        change(bp_id, status: RxStatus.success());
      } else {
        change(bp_id, status: RxStatus.empty());
      }
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
