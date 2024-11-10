import 'package:flutter/material.dart';

class puisi_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puisi"),
        backgroundColor: Colors.brown[900],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pengantar Puisi",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Puisi adalah bentuk karya sastra yang mengungkapkan perasaan, pikiran, dan pengalaman penulis dengan bahasa yang teratur dan penuh makna. Biasanya, puisi memiliki struktur yang khas, termasuk penggunaan ritme, rima, dan imaji. ",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Unsur-unsur Puisi:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "1. Rima: Pola bunyi yang diulang dalam puisi, biasanya di akhir baris. Rima dapat membuat puisi lebih harmonis dan mudah diingat.\n"
                  "2. Ritme: Ketukan atau irama dalam puisi yang menciptakan suasana tertentu. Ritme dapat bervariasi tergantung pada pemilihan kata dan struktur kalimat.\n"
                  "3. Imaji: Penggunaan bahasa yang menggugah panca indra, sehingga pembaca dapat merasakan atau membayangkan apa yang digambarkan dalam puisi.\n"
                  "4. Metafora: Perbandingan langsung antara dua hal yang berbeda untuk menekankan kesamaan tertentu, tanpa menggunakan kata penghubung seperti 'sebagai'.\n"
                  "5. Personifikasi: Memberikan sifat manusia kepada benda mati atau konsep abstrak, sehingga membuat puisi lebih hidup dan emosional.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Contoh Puisi:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Di bawah ini adalah contoh puisi sederhana:\n"
                  "Dalam hening malam sepi,\n"
                  "Bintang-bintang bersinar terang,\n"
                  "Mendengar bisikan angin,\n"
                  "Mengantar mimpi dalam pelukan.\n",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            // Add more content about Puisi as needed
          ],
        ),
      ),
    );
  }
}
