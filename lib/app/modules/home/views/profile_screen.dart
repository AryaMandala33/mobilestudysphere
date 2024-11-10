import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController(text: 'Nama Pengguna');
  final TextEditingController _emailController = TextEditingController(text: 'email@domain.com');
  final TextEditingController _phoneController = TextEditingController(text: '+62 812-3456-7890');
  final TextEditingController _addressController = TextEditingController(text: 'Jalan Mawar No. 1, Jakarta');
  final TextEditingController _dobController = TextEditingController(text: '1 Januari 1990');

  void _editProfile() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Profile', style: TextStyle(color: Colors.brown[900])),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Nama Pengguna'),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(labelText: 'Nomor Telepon'),
                ),
                TextField(
                  controller: _addressController,
                  decoration: InputDecoration(labelText: 'Alamat'),
                ),
                TextField(
                  controller: _dobController,
                  decoration: InputDecoration(labelText: 'Tanggal Lahir'),
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime(1990, 1, 1),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _dobController.text = "${pickedDate.day} ${_getMonthName(pickedDate.month)} ${pickedDate.year}";
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel', style: TextStyle(color: Colors.brown[900])),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {}); // Memperbarui tampilan dengan data baru
                Navigator.pop(context);
              },
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[700],
              ),
            ),
          ],
        );
      },
    );
  }

  String _getMonthName(int month) {
    const monthNames = [
      'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni',
      'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
    ];
    return monthNames[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100], // Latar belakang krem
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.brown[900], // Merah maroon untuk AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://via.placeholder.com/150', // Ganti dengan URL atau asset gambar profil yang sesuai
              ),
            ),
            SizedBox(height: 20),

            Text(
              _nameController.text,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900], // Warna maroon untuk nama pengguna
              ),
            ),

            Text(
              _emailController.text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.brown[700],
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: _editProfile,
              icon: Icon(Icons.edit, color: Colors.white),
              label: Text("Edit Profile"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.brown[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            ListTile(
              leading: Icon(Icons.phone, color: Colors.brown[900]),
              title: Text("Nomor Telepon", style: TextStyle(color: Colors.brown[900])),
              subtitle: Text(_phoneController.text, style: TextStyle(color: Colors.brown[700])),
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.brown[900]),
              title: Text("Alamat", style: TextStyle(color: Colors.brown[900])),
              subtitle: Text(_addressController.text, style: TextStyle(color: Colors.brown[700])),
            ),
            ListTile(
              leading: Icon(Icons.date_range, color: Colors.brown[900]),
              title: Text("Tanggal Lahir", style: TextStyle(color: Colors.brown[900])),
              subtitle: Text(_dobController.text, style: TextStyle(color: Colors.brown[700])),
            ),
          ],
        ),
      ),
    );
  }
}
