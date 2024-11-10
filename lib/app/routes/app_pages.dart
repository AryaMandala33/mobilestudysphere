 // Import SejarahScreen

import 'package:get/get_navigation/src/routes/get_route.dart';
import '../modules/home/bindings/auth_binding.dart';
import '../modules/home/bindings/course_binding.dart';
import '../modules/home/views/bahasa_indonesia_screen.dart';
import '../modules/home/views/course_screen.dart';
import '../modules/home/views/kemerdekaan_screen.dart';
import '../modules/home/views/login_screen.dart';
import '../modules/home/views/matematika_screen.dart';
import '../modules/home/views/profile_screen.dart';
import '../modules/home/views/sejarah_screen.dart';
import '../modules/home/views/sign_up_screen.dart';

class AppRoutes {
  static const login = '/login';
  static const signUp = '/sign-up';
  static const courses = '/courses';
  static const profile = '/profile';
  static const bahasaIndonesia = '/bahasa-indonesia';
  static const sejarah = '/sejarah'; // New route for Sejarah
  static const matematika = '/matematika'; // New route for Matematika
  static const kemerdekaanIndonesia = '/kemerdekaan-indonesia'; // New route for Kemerdekaan

  static final pages = [
    GetPage(name: login, page: () => LoginScreen(), binding: AuthBinding()),
    GetPage(name: signUp, page: () => SignUpScreen(), binding: AuthBinding()),
    GetPage(name: courses, page: () => CoursesScreen(), binding: CourseBinding()),
    GetPage(name: profile, page: () => ProfileScreen()),
    GetPage(name: bahasaIndonesia, page: () => BahasaIndonesiaScreen()),
    GetPage(name: sejarah, page: () => SejarahScreen()), // Add SejarahScreen
    GetPage(name: matematika, page: () => MatematikaScreen()), // Add MatematikaScreen
    GetPage(name: kemerdekaanIndonesia, page: () => KemerdekaanIndonesiaScreen()), // Add KemerdekaanScreen
  ];
}

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.courses,
      page: () => CoursesScreen(),
      binding: CourseBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: AppRoutes.bahasaIndonesia,
      page: () => BahasaIndonesiaScreen(),
    ),
    GetPage(
      name: AppRoutes.sejarah,
      page: () => SejarahScreen(), // Add Sejarah screen
    ),
    GetPage(
      name: AppRoutes.matematika,
      page: () => MatematikaScreen(), // Add Matematika screen
    ),
    GetPage(
      name: AppRoutes.kemerdekaanIndonesia,
      page: () => KemerdekaanIndonesiaScreen(), // Add KemerdekaanIndonesia screen
    ),
  ];
}
