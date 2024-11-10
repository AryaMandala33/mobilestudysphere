import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import 'course_screen.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Inisialisasi AuthController
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF4E6),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 100, color: Colors.black87),
              SizedBox(height: 40),
              _buildTextField(emailController, 'Email Address'),
              SizedBox(height: 16),
              _buildTextField(passwordController, 'Password', obscureText: true),
              SizedBox(height: 24),
              Obx(() {
                return ElevatedButton(
                  onPressed: authController.isLoading.value
                      ? null
                      : () {
                    _loginUser();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  ),
                  child: authController.isLoading.value
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text("Login", style: TextStyle(color: Colors.white, fontSize: 16)),
                );
              }),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Get.to(() => SignUpScreen());
                },
                child: Text("Sign Up", style: TextStyle(color: Colors.black87)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk login menggunakan AuthController
  void _loginUser() {
    final String email = emailController.text.trim();
    final String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please fill in both email and password', backgroundColor: Colors.red);
      return;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Error', 'Invalid email format', backgroundColor: Colors.red);
      return;
    }

    authController.loginUser(email, password).then((_) {
      if (!authController.isLoading.value) {
        Get.offAll(() => CoursesScreen());
      }
    });
  }

  // Widget untuk membangun input text field
  Widget _buildTextField(TextEditingController controller, String labelText, {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
