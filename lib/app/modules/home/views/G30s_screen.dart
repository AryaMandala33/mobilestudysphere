import 'package:flutter/material.dart';


class G30SScreen extends StatelessWidget {
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
                  'assets/g30spki.jpeg',
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
                      "Peristiwa Gerakan 30 September (G30S)",
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
                    "Latar Belakang Peristiwa G30S",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Gerakan 30 September, atau yang dikenal sebagai G30S, adalah sebuah peristiwa yang terjadi pada malam tanggal 30 September hingga dini hari tanggal 1 Oktober 1965. Dalam peristiwa ini, tujuh perwira tinggi TNI Angkatan Darat diculik dan dibunuh oleh sekelompok orang yang mengaku dari 'Gerakan 30 September'.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Kronologi Peristiwa",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Peristiwa G30S diduga terjadi karena konflik internal di antara para elit militer dan kekhawatiran terhadap kekuatan komunis yang meningkat. Pada malam tanggal 30 September 1965, tujuh perwira tinggi TNI AD diculik dari rumah mereka dan dibawa ke Lubang Buaya, di mana mereka kemudian dibunuh. Peristiwa ini menjadi titik awal perubahan besar dalam struktur pemerintahan dan politik Indonesia.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Dampak dan Pengaruh",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Setelah peristiwa ini, keadaan politik di Indonesia menjadi sangat tegang. Soeharto, yang pada saat itu menjabat sebagai Panglima Komando Strategis Angkatan Darat (Kostrad), mengambil alih kendali dan kemudian memulai upaya untuk membubarkan Partai Komunis Indonesia (PKI). Dalam beberapa bulan berikutnya, terjadi penangkapan besar-besaran terhadap anggota PKI dan simpatisannya, yang menimbulkan dampak yang mendalam dalam sejarah Indonesia.",
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
