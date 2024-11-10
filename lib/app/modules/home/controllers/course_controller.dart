import 'package:get/get.dart';
import '../models/course_model.dart';

class CourseController extends GetxController {
  var courses = <CourseModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCourses();
  }

  void fetchCourses() {
    courses.value = [
      CourseModel(name: 'Matematika', lessons: 2),
      CourseModel(name: 'Bahasa', lessons: 2),
      CourseModel(name: 'Sejarah', lessons: 5),
    ];
  }
}
