import 'package:flutter/material.dart';

class geometri_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Geometri"),
        backgroundColor: Colors.brown[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pengantar Geometri",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Geometri adalah cabang matematika yang mempelajari sifat-sifat dan hubungan antar titik, garis, bidang, dan ruang. Geometri banyak digunakan dalam berbagai bidang seperti seni, arsitektur, dan ilmu teknik.",
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),

              Text(
                "Bentuk Dasar Geometri",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Geometri dasar meliputi bentuk-bentuk seperti lingkaran, segitiga, persegi, dan persegi panjang. Setiap bentuk memiliki sifat khusus yang mempengaruhi perhitungan luas, keliling, dan volume.",
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),

              Text(
                "Teorema Pythagoras",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Salah satu konsep penting dalam geometri adalah Teorema Pythagoras, yang menyatakan bahwa dalam segitiga siku-siku, kuadrat dari panjang sisi miring sama dengan jumlah kuadrat dari panjang kedua sisi lainnya.",
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
