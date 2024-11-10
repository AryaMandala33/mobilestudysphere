import 'package:flutter/material.dart';

class aljabar_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Aljabar"),
        backgroundColor: Colors.brown[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pengantar Aljabar",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Aljabar adalah cabang matematika yang berfokus pada pemecahan persamaan dan operasi dengan simbol dan variabel. Aljabar merupakan dasar dari hampir semua cabang ilmu matematika lainnya.",
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),

              Text(
                "Konsep Dasar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Dalam aljabar, kita menggunakan variabel seperti x dan y untuk mewakili angka yang belum diketahui. Persamaan aljabar melibatkan operasi penjumlahan, pengurangan, perkalian, dan pembagian yang diterapkan pada variabel tersebut.",
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),

              Text(
                "Contoh Persamaan Aljabar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Contoh sederhana dari persamaan aljabar adalah: x + 2 = 5. Dengan menyelesaikan persamaan ini, kita dapat menemukan nilai dari x, yaitu x = 3.",
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
