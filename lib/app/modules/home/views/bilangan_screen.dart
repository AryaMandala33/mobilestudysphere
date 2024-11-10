import 'package:flutter/material.dart';

class bilangan_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Bilangan"),
        backgroundColor: Colors.brown[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pengantar Bilangan",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Bilangan adalah konsep dasar dalam matematika yang digunakan untuk mengukur, menghitung, dan mengidentifikasi objek. Ada berbagai jenis bilangan yang digunakan dalam matematika.",
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),

              Text(
                "Jenis-jenis Bilangan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "1. Bilangan Asli: Bilangan yang dimulai dari 1 dan seterusnya (1, 2, 3, ...).\n"
                    "2. Bilangan Cacah: Sama seperti bilangan asli tetapi termasuk 0 (0, 1, 2, ...).\n"
                    "3. Bilangan Bulat: Semua bilangan positif dan negatif, termasuk 0 (..., -2, -1, 0, 1, 2, ...).\n"
                    "4. Bilangan Rasional: Bilangan yang bisa dinyatakan sebagai pecahan (1/2, 3/4, ...).\n"
                    "5. Bilangan Irasional: Bilangan yang tidak bisa dinyatakan sebagai pecahan sederhana (√2, π, ...).",
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),

              Text(
                "Sifat Bilangan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Setiap jenis bilangan memiliki sifat uniknya sendiri. Misalnya, bilangan bulat terdiri dari bilangan positif dan negatif, sementara bilangan rasional dapat dinyatakan dalam bentuk pecahan.",
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
