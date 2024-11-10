import 'package:flutter/material.dart';
import 'package:myapp/app/modules/home/widgets/materi_button.dart';
import 'puisi_screen.dart'; // Import the new PuisiScreen class
import 'cerpen_screen.dart'; // Import the new CerpenScreen class
import 'tata_bahasa_screen.dart'; // Import the new TataBahasaScreen class

class BahasaIndonesiaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF4E6),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Bahasa Indonesia",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Color(0xFFFFF4E6),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Materi Bahasa Indonesia',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            MateriButton(title: 'Tata Bahasa', onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => tata_bahasa_screen()));
            }),
            MateriButton(title: 'Puisi', onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => puisi_screen()));
            }),
            MateriButton(title: 'Cerpen', onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => cerpen_screen()));
            }),
          ],
        ),
      ),
    );
  }
}
