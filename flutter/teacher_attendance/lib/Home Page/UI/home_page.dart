import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teacher_attendance/Home%20Page/controller/my_home_controller.dart';
import 'package:teacher_attendance/Login%20Page/UI/login_page.dart';
import 'package:teacher_attendance/color_style.dart';
import 'package:teacher_attendance/data_binding.dart';
import 'package:teacher_attendance/widget/flutter_toast.dart';

class MyHomePage extends GetView<MyHomeController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Scaffold(
        appBar: AppBar(
          backgroundColor: ColorStyle.appBarColor,
          title: const Center(
            child: Text(
              'Teacher Attendance',
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          titlePadding: const EdgeInsets.all(0),
                          title: Container(
                            color: const Color(0xffb70021),
                            height: MediaQuery.of(context).size.height / 20,
                            child: const Center(
                              child: Text(
                                'Log Out',
                                style: TextStyle(
                                  fontFamily: 'Gotham Bold',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          content: const Text(
                            'Are you sure you want to logout?',
                          ),
                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      SharedPreferences preference =
                                          await SharedPreferences.getInstance();
                                      preference.setBool('is_login', false);
                                      preference.setString('is_localAuth', '0');
                                      Get.off(
                                        () => const LoginPage(),
                                        binding: DataBinding(),
                                      );

                                      FlutterToast().flutterToastWidget(
                                          "Successfully LogOut");
                                      preference.clear();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      backgroundColor: const Color(0xffb70021),
                                    ),
                                    child: const Text(
                                      'Yes',
                                      style: TextStyle(
                                        fontFamily: 'Gotham Bold',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      backgroundColor: const Color(0xffb70021),
                                    ),
                                    child: const Text(
                                      'No',
                                      style: TextStyle(
                                        fontFamily: 'Gotham Bold',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            )
                          ],
                        );
                      },
                      context: context);
                },
                child: const Icon(
                  Icons.logout,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(),
        body: controller.children[controller.selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Take Attendance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Teacher Profile',
            ),
          ],
          enableFeedback: true,
          elevation: 5,
          currentIndex: controller.selectedIndex,
          selectedItemColor: Colors.black,
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
