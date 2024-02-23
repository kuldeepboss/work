import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teacher_attendance/data_binding.dart';
import 'package:teacher_attendance/Home%20Page/UI/home_page.dart';
import 'package:teacher_attendance/Home%20Page/UI/HomeScreen.dart';
import 'package:teacher_attendance/widget/customLoader.dart';
import 'Login Page/UI/login_page.dart';
import 'constdata/global_data.dart';

late List<CameraDescription> cameras;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MaterialApp(home: HomeScreen()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      color: const Color(0xffb70021),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late bool? repeat = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () async {
      checkIfLogged();
    });
  }

  Future<dynamic> checkIfLogged() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    repeat = preferences.getBool('is_login');
    companyId = preferences.getString('company_id');

    ///NEW ADD
    if (repeat == true) {
      Get.offAll(
        () => const MyHomePage(),
        binding: DataBinding(),
      );
    } else {
      Get.offAll(
        () => const LoginPage(),
        binding: DataBinding(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: LoadingIndicator()),
      ),
    );
  }
}
