import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../text_style.dart';
import '../controller/teacher_profile_controller.dart';

class TeacherProfile extends StatelessWidget {
  const TeacherProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TeacherProfileController());
    return Scaffold(
      body: controller.obx(
        (state) => ListView.builder(
          itemCount: controller.full_name.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('images/no_profile_image.png'),
                            backgroundColor: Colors.transparent,
                            radius: 35,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 3),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Text(
                                  controller.full_name[index],
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: text_style().NewTitleTextValue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 3),
                              child: Row(
                                children: [
                                  Text(
                                    'Mobile No: ',
                                    textAlign: TextAlign.left,
                                    maxLines: 2,
                                    style: text_style().NewTitleTextHeading,
                                  ),
                                  Text(
                                    controller.bp_mobile_no[index],
                                    textAlign: TextAlign.left,
                                    style: text_style().NewTitleTextValue,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 3),
                              child: Row(
                                children: [
                                  Text(
                                    'Designation: ',
                                    textAlign: TextAlign.left,
                                    maxLines: 2,
                                    style: text_style().NewTitleTextHeading,
                                  ),
                                  Text(
                                    controller.designation[index],
                                    textAlign: TextAlign.left,
                                    style: text_style().NewTitleTextValue,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 3),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Text(
                                  controller.bp_email[index],
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: text_style().NewTitleTextValue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
