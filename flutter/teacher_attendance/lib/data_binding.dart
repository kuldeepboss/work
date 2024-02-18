import 'package:get/get.dart';
import 'package:teacher_attendance/Login%20Page/controller/login_controller.dart';
import 'Home Page/controller/my_home_controller.dart';
import 'Teacher Profile/controller/teacher_profile_controller.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => MyHomeController());
    Get.lazyPut(() => TeacherProfileController());
  }
}
