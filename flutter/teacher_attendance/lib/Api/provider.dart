import 'package:get/get.dart';
import '../constdata/global_data.dart';

class Provider extends GetConnect {
  Future getLoginData(
    String email,
    String password,
    String isDevice,
  ) async {
    Map data = {
      'unique_id': email,
      'password': password,
      'is_device': isDevice,
    };
    return await GlobalData()
        .httpClientRequestBaseUrl(mapData: data, pageName: 'login');
  }

  Future<dynamic> teacherProfileData({
    String? parentId,
  }) async {
    Map data = {
      'parent_id': parentId,
      'company_id': companyId,
    };
    return await GlobalData()
        .httpClientRequestBaseUrl(mapData: data, pageName: 'team_list');
  }
}
