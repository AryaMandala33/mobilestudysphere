import 'package:get/get.dart';
import 'package:myapp/app/modules/home/bindings/auth_binding.dart';
import 'package:myapp/app/modules/home/bindings/course_binding.dart';
import 'package:myapp/app/modules/home/views/kemerdekaan_screen.dart';
import 'package:myapp/app/modules/home/views/bahasa_indonesia_screen.dart';
import 'package:myapp/app/modules/home/views/login_screen.dart';
import 'package:myapp/app/modules/home/views/matematika_screen.dart';
import 'package:myapp/app/modules/home/views/profile_screen.dart';
import 'package:myapp/app/modules/home/views/sign_up_screen.dart';
import 'package:myapp/app/modules/home/views/sejarah_screen.dart';

import '../modules/home/views/course_screen.dart'; // Import SejarahScreen
// Import MatematikaScreen

class AppRoutes {
  static const login = '/login';
  static const signUp = '/sign-up';
  static const courses = '/courses';
  static const profile = '/profile';
  static const bahasaIndonesia = '/bahasa-indonesia';
  static const sejarah = '/sejarah'; // Rute baru untuk Sejarah
  static const matematika = '/matematika'; // Rute baru untuk Matematika
  static const kemerdekaanIndonesia = '/kemerdekaan-indonesia';

  static final pages = [
    GetPage(name: login, page: () => LoginScreen(), binding: AuthBinding()),
    GetPage(name: signUp, page: () => SignUpScreen(), binding: AuthBinding()),
    GetPage(name: courses, page: () => CoursesScreen(), binding: CourseBinding()),
    GetPage(name: profile, page: () => ProfileScreen()),
    GetPage(name: bahasaIndonesia, page: () => BahasaIndonesiaScreen()),
    GetPage(name: sejarah, page: () => SejarahScreen()), // Tambahkan SejarahScreen
    GetPage(name: matematika, page: () => MatematikaScreen()), // Tambahkan MatematikaScreen
    GetPage(name: kemerdekaanIndonesia, page: () => KemerdekaanIndonesiaScreen()),
  ];
}
