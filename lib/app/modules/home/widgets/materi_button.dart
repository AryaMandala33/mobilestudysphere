import 'package:flutter/material.dart';

class MateriButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  MateriButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 60), // Sesuai ukuran pada gambar
          backgroundColor: Color(0xFFFFE0CC), // Warna krem seperti pada gambar
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.black), // Border hitam sesuai gambar
          ),
          elevation: 0, // Tanpa bayangan seperti pada gambar
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.black), // Sesuai dengan warna teks dan ukuran pada gambar
        ),
      ),
    );
  }
}
