import 'package:flutter/material.dart';
import 'package:myapp/app/modules/home/views/G30s_screen.dart';
import 'package:myapp/app/modules/home/views/kemerdekaan_screen.dart';
import 'package:myapp/app/modules/home/views/supersemar_screen.dart';
import 'package:myapp/app/modules/home/widgets/materi_button.dart';

class SejarahScreen extends StatelessWidget {
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
          "Sejarah",
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
              'Materi Sejarah',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            MateriButton(title: 'G30S/PKI', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => G30SScreen(), // Navigasi ke G30SScreen
                ),
              );
            }),
            MateriButton(title: 'Kemerdekaan Indonesia', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KemerdekaanIndonesiaScreen(),
                ),
              );
            }),
            MateriButton(title: 'Supersemar', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => supersemar_screen(), // Navigasi ke SupersemarScreen
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class SupersemarScreen {
}
