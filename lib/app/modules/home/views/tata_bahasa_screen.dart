import 'package:flutter/material.dart';

class tata_bahasa_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tata Bahasa"),
        backgroundColor: Colors.brown[900],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pengantar Tata Bahasa",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Tata bahasa adalah sistem aturan yang mengatur cara penggunaan bahasa dalam berkomunikasi. Hal ini mencakup struktur kalimat, morfologi, sintaksis, serta penggunaan kata, frasa, dan tanda baca. Pemahaman tata bahasa yang baik sangat penting untuk menulis dan berbicara dengan jelas dan efektif.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Unsur-unsur Tata Bahasa:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "1. Fonologi: Ilmu yang mempelajari bunyi-bunyi dalam bahasa dan bagaimana bunyi tersebut diatur dalam kata.\n"
                  "2. Morfologi: Cabang tata bahasa yang mengkaji struktur kata dan perubahan bentuk kata, termasuk akhiran dan awalan.\n"
                  "3. Sintaksis: Aturan yang mengatur penggabungan kata-kata menjadi kalimat yang benar. Sintaksis mencakup struktur kalimat dasar, seperti subjek, predikat, dan objek.\n"
                  "4. Semantik: Studi tentang makna kata dan kalimat. Semantik membantu kita memahami arti yang terkandung dalam sebuah kalimat.\n"
                  "5. Pragmatik: Cabang ilmu yang mempelajari penggunaan bahasa dalam konteks sosial, termasuk bagaimana makna bisa berubah tergantung pada situasi.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Pentingnya Tata Bahasa:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Menguasai tata bahasa membantu kita:\n"
                  "- Menyampaikan pikiran dan ide dengan jelas dan tepat.\n"
                  "- Menghindari kesalahpahaman dalam komunikasi.\n"
                  "- Meningkatkan kemampuan menulis dan berbicara, baik dalam konteks formal maupun informal.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            // Add more content about Tata Bahasa as needed
          ],
        ),
      ),
    );
  }
}
