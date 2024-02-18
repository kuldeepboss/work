import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    // TODO: implement onInit
    gatSchoolDate();
    super.onInit();
  }

  String orgName = '';

  void gatSchoolDate() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    orgName = preferences.getString('org_name')!;
    change(orgName, status: RxStatus.success());
    update();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
