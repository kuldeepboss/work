import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_attendance/Login%20Page/controller/login_controller.dart';
import 'package:teacher_attendance/data_binding.dart';
import '../../Home Page/UI/home_page.dart';
import '../../widget/DialogBuilder.dart';

RegExp regexpEmail = RegExp(emailPattern);
RegExp regexpPass = RegExp(passPattern);

String emailPattern =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
String passPattern =
    r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8fafc),
      body: controller.obx(
        (state) => SizedBox(
          height: MediaQuery.of(context).size.height / 1.06,
          child: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        'images/new_logo1.png',
                        height: MediaQuery.of(context).size.height / 4,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.height / 2.5,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello,',
                                style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              Text(
                                'Please Sign In To Continue',
                                style: TextStyle(
                                    // fontFamily: 'Gotham',
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 100,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 150),
                          TextFormField(
                            controller: controller.emailController,
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !regexpEmail.hasMatch(value)) {
                                return 'Please enter valid email';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[250],
                              hintText: 'Enter Your Email',
                              // labelText: 'Email',
                              labelStyle: const TextStyle(
                                  fontFamily: 'Gotham Bold',
                                  fontSize: 15,
                                  color: Colors.black),
                              hintStyle: const TextStyle(
                                fontFamily: 'Gotham Light',
                                fontSize: 16,
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              disabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  // color: Color(0xffb70021),
                                  color: Colors.grey,
                                ),
                              ),
                              suffix: const Icon(
                                Icons.mail_outline,
                                color: Colors.black,
                              ),
                            ),
                            // autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 30,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Password",
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 150),
                          TextFormField(
                            controller: controller.passController,
                            validator: (value) {
                              if (value!.length < 6 ||
                                  !regexpPass.hasMatch(value)) {
                                return 'Please enter at least 6 character password and must strong';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[250],
                              hintText: 'Enter Your Password',
                              // labelText: 'Email',
                              labelStyle: const TextStyle(
                                  fontFamily: 'Gotham Bold',
                                  fontSize: 15,
                                  color: Colors.black),
                              hintStyle: const TextStyle(
                                fontFamily: 'Gotham Light',
                                fontSize: 16,
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              disabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    // color: Color(0xffb70021),
                                    color: Colors.grey),
                              ),
                              suffix: InkWell(
                                child: Icon(
                                  controller.secureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color(0xffb70021),
                                ),
                                onTap: () {
                                  controller.showText();
                                },
                              ),
                            ),
                            obscureText: controller.secureText,
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          // fontFamily: 'Gotham Light',
                          fontSize: 16,
                          // color: Color(0xffb70021),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width / 60),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 0, bottom: 15),
                        child: ElevatedButton(
                          onPressed: () async {
                            if (controller.formKey.currentState!.validate()) {
                              DialogBuilder(context).showLoadingIndicator(
                                  "Verifying email and password");
                              await controller.getLoginDetails();
                              Get.back();
                              Get.offAll(
                                () => const MyHomePage(),
                                binding: DataBinding(),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffb70021),
                          ),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontFamily: 'Gotham Bold',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/Rectangle 63.png",
                            width: MediaQuery.of(context).size.width / 3,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 15,
                          ),
                          // horizontalLine(),
                          const Text(
                            'OR',
                            style: TextStyle(
                                fontFamily: 'Gotham Light',
                                fontSize: 14,
                                color: Color(0xffb70021)),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 15,
                          ),
                          Image.asset(
                            "images/Rectangle 63.png",
                            width: MediaQuery.of(context).size.width / 3,
                            color: Colors.red,
                          ),
                          // horizontalLine()
                        ],
                      ),
                    ),
                    // if (is_login != 0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not a Member ?",
                          style: TextStyle(
                              fontFamily: 'Gotham Bold',
                              fontSize: 18,
                              // color: Color(0xffb70021),
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 50,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up Now',
                            style: TextStyle(
                              fontFamily: 'Gotham Bold',
                              fontSize: 18,
                              color: Color(0xffb70021),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Visibility(
                    //   visible: show,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       TextButton(
                    //         onPressed: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) {
                    //                 return Login_With_Mobile_Number();
                    //               },
                    //             ),
                    //           );
                    //         },
                    //         child: const Text(
                    //           'Student Login',
                    //           style: TextStyle(
                    //             fontFamily: 'Gotham Bold',
                    //             fontSize: 18,
                    //             color: Color(0xffb70021),
                    //             decoration: TextDecoration.underline,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          // padding:
          // EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        ),
      ),
    );
  }
}
