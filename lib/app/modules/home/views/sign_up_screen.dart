import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart'; // Import AuthController

class SignUpScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Inisialisasi AuthController
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF4E6),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF4E6),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView( // Wrap with SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, size: 100, color: Colors.black87),
                SizedBox(height: 40),
                _buildTextField(usernameController, 'Name'),
                SizedBox(height: 16),
                _buildTextField(emailController, 'Email Address'),
                SizedBox(height: 16),
                _buildTextField(passwordController, 'Password', obscureText: true),
                SizedBox(height: 24),
                Obx(() {
                  return ElevatedButton(
                    onPressed: authController.isLoading.value
                        ? null
                        : () {
                      _registerUser(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                    ),
                    child: authController.isLoading.value
                        ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                        : Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk melakukan pendaftaran pengguna
  void _registerUser(BuildContext context) {
    final String username = usernameController.text.trim();
    final String email = emailController.text.trim();
    final String password = passwordController.text.trim();

    // Validasi input
    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please fill in all fields',
          backgroundColor: Colors.red);
      return;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Error', 'Invalid email format',
          backgroundColor: Colors.red);
      return;
    }

    if (password.length < 6) {
      Get.snackbar('Error', 'Password must be at least 6 characters',
          backgroundColor: Colors.red);
      return;
    }

    // Panggil method registerUser dari AuthController
    authController.registerUser(email, password);
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
