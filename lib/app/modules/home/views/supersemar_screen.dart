import 'package:flutter/material.dart';

class supersemar_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/supersemar.jpg', // Sesuaikan path gambar
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 200,
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      "Peristiwa Surat Perintah Sebelas Maret (Supersemar)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Latar Belakang Supersemar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Supersemar adalah singkatan dari Surat Perintah Sebelas Maret, sebuah dokumen yang dikeluarkan oleh Presiden Soekarno pada 11 Maret 1966. Dokumen ini memberikan mandat kepada Letnan Jenderal Soeharto untuk mengambil langkah-langkah yang diperlukan untuk menjaga keamanan dan ketertiban negara pada saat situasi politik sedang tegang.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Isi dan Dampak Supersemar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Supersemar memberi Soeharto wewenang besar yang pada akhirnya mengarah pada transisi kekuasaan dari Soekarno ke Soeharto. Dengan Supersemar, Soeharto mengambil tindakan untuk menahan dan membubarkan Partai Komunis Indonesia (PKI), yang dianggap sebagai ancaman besar pada waktu itu.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Kontroversi dan Misteri",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Dokumen Supersemar masih menyisakan banyak pertanyaan. Beberapa versi dokumen ditemukan, dan kontroversi terkait isi asli dan maksud dari dokumen tersebut terus menjadi perdebatan di kalangan sejarawan.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.black),
              onPressed: () {
                // Navigasi ke halaman home
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi kembali ke halaman Sejarah
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[900],
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Done",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
