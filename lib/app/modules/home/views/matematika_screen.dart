import 'package:flutter/material.dart';
import 'aljabar_screen.dart';
import 'geometri_screen.dart';
import 'bilangan_screen.dart';
import 'package:myapp/app/modules/home/widgets/materi_button.dart';

class MatematikaScreen extends StatelessWidget {
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
          "Matematika",
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
              'Materi Matematika',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            MateriButton(
              title: 'Aljabar',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aljabar_screen()),
                );
              },
            ),
            MateriButton(
              title: 'Geometri',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => geometri_screen()),
                );
              },
            ),
            MateriButton(
              title: 'Bilangan',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bilangan_screen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
