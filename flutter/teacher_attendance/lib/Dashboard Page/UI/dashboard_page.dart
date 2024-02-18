import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(
      body: controller.obx(
        (state) => Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                color: const Color(0xffB70021),
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Welcome ${controller.orgName == '' ? '' : controller.orgName} At Traceable Giving',
                    // widget.orgName,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Gotham Bold',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Image.asset(
                'images/new_logo1.png',
                height: MediaQuery.of(context).size.height / 5,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.height / 2.5,
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                thickness: 3,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Image.asset(
                'images/school_logo.png',
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.height / 2.5,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                thickness: 3,
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 0, bottom: 15),
                child: ElevatedButton(
                  onPressed: () async {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffb70021),
                  ),
                  child: const Text(
                    'Take Attendance',
                    style: TextStyle(
                      fontFamily: 'Gotham Bold',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
