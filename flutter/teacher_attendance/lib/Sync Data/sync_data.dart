import 'package:teacher_attendance/Api/provider.dart';

import '../Local Database/database_helper.dart';

class SyncData {
  final db = DBHelper();

  Future<dynamic> teacherProfileData(
    String parentId,
  ) async {
    return Provider().teacherProfileData(
      parentId: parentId,
    ).then((value) async {
      if (value['errorCode'] == '1') {
        List data = value['response'];
        for (var i = 0; i < data.length; i++) {
          var teacherAvailable =
              await db.checkTeacherIsAvailable(data[i]['bp_tal_id']);
          if (teacherAvailable) {
            print('Update Start');
            await db.teacherUpdate({
              DBHelper.bp_id: data[i]['bp_id'],
              DBHelper.bp_tal_id: data[i]['bp_tal_id'],
              DBHelper.full_name: data[i]['full_name'],
              DBHelper.designation: data[i]['designation'],
              DBHelper.bp_email: data[i]['bp_email'],
              DBHelper.bp_mobile_no: data[i]['bp_mobile_no'],
              DBHelper.attendanceConfiguration: '',
            });
            print('Update Done');
          } else {
            print('Insert Start');
            await db.teacherInsert({
              DBHelper.bp_id: data[i]['bp_id'],
              DBHelper.bp_tal_id: data[i]['bp_tal_id'],
              DBHelper.full_name: data[i]['full_name'],
              DBHelper.designation: data[i]['designation'],
              DBHelper.bp_email: data[i]['bp_email'],
              DBHelper.bp_mobile_no: data[i]['bp_mobile_no'],
              DBHelper.attendanceConfiguration: '',
            });
            print('Insert Done');
          }
        }
      }
    });
  }
}
