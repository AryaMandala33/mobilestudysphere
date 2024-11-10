import 'package:flutter/material.dart';
import 'sejarah_screen.dart';

class KemerdekaanIndonesiaScreen extends StatelessWidget {
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
                  'assets/kemerdekaan.jpeg', // Sesuaikan path gambar
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
                      "Sejarah Indonesia: Masa Penjajahan hingga Kemerdekaan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: MediaQuery.of(context).size.width / 2 - 25,
                  child: IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 50,
                    ),
                    onPressed: () {
                      // Aksi play video atau audio
                    },
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
                    "Kedatangan Bangsa Eropa",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Pada awal abad ke-16, bangsa Eropa seperti Portugis, Spanyol, Belanda, dan Inggris mulai berdatangan ke Nusantara untuk berdagang rempah-rempah. Mereka memonopoli perdagangan dan secara bertahap memperluas pengaruhnya ke berbagai wilayah.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Penjajahan Belanda",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Belanda melalui VOC (Vereenigde Oost-Indische Compagnie) berhasil memonopoli perdagangan di Indonesia dan menguasai banyak wilayah. Setelah VOC bubar, pemerintahan Hindia Belanda mengambil alih dan memulai era penjajahan resmi.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Perjuangan Kemerdekaan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Perlawanan terhadap penjajahan mulai timbul di berbagai daerah, dipimpin oleh tokoh-tokoh lokal seperti Pangeran Diponegoro, Imam Bonjol, dan Sultan Hasanuddin. Perjuangan ini berlanjut hingga abad ke-20 ketika organisasi-organisasi pergerakan nasional seperti Budi Utomo, Sarekat Islam, dan PNI muncul.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Proklamasi Kemerdekaan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Pada 17 Agustus 1945, Soekarno dan Hatta memproklamasikan kemerdekaan Indonesia di Jakarta. Proklamasi ini menandai berakhirnya penjajahan dan awal berdirinya negara Indonesia yang merdeka.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Masa Pasca Kemerdekaan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Setelah kemerdekaan, Indonesia mengalami berbagai tantangan, termasuk mempertahankan kemerdekaan dari upaya Belanda yang ingin kembali menguasai Indonesia, serta membangun negara baru yang stabil dan berdaulat.",
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
                // Navigasi ke SejarahScreen saat tombol Done ditekan
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SejarahScreen(),
                  ),
                );
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
