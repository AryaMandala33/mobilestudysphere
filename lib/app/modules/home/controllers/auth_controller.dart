import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myapp/app/modules/home/views/login_screen.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  Future<void> registerUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Registration successful', backgroundColor: Colors.green);
      Get.off(() => LoginScreen());
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', 'Registration failed: ${e.message}', backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loginUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Login successful', backgroundColor: Colors.green);
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', 'Login failed: ${e.message}', backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
