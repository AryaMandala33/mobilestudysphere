import 'package:flutter/material.dart';

class cerpen_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cerpen"),
        backgroundColor: Colors.brown[900],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pengantar Cerpen",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Cerpen atau cerita pendek adalah bentuk karya sastra prosa yang menceritakan suatu kisah dalam ruang lingkup yang terbatas. Cerpen biasanya memiliki plot yang padat dan langsung ke inti cerita, dengan karakter dan konflik yang dikembangkan dalam waktu singkat.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Ciri-ciri Cerpen:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "1. Singkat: Cerpen biasanya hanya terdiri dari beberapa halaman, menjadikannya mudah dibaca dalam sekali duduk.\n"
                  "2. Fokus pada satu tema: Cerpen sering kali berfokus pada satu peristiwa atau tema utama, tanpa banyak subplot.\n"
                  "3. Pengembangan karakter yang terbatas: Karena ruang lingkup yang kecil, pengembangan karakter biasanya lebih terbatas dibandingkan novel.\n"
                  "4. Konflik dan resolusi: Cerpen sering kali memiliki satu konflik utama yang diselesaikan di akhir cerita.\n"
                  "5. Gaya bahasa yang khas: Penulis cerpen sering menggunakan gaya bahasa yang ringkas dan efektif, dengan pemilihan kata yang cermat untuk membangun suasana.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Contoh Cerpen Pendek:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Suatu hari, di sebuah desa kecil, hiduplah seorang anak bernama Rani. Ia sangat menyukai bunga dan selalu merawat kebun kecil di belakang rumahnya. Suatu pagi, Rani menemukan bunga aneh yang belum pernah ia lihat sebelumnya. Ia merasa ada sesuatu yang istimewa tentang bunga itu...\n",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            // Add more content about Cerpen as needed
          ],
        ),
      ),
    );
  }
}
