import 'package:flutter/material.dart';
import 'package:uts_1/widget/infoisitabel.dart';
import 'userdara.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Akun'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(Icons.person, size: 100, color: Colors.blueAccent),
              ),
              SizedBox(height: 20),
              TabelIsi(
                title: 'Nama Lengkap:',
                content: UserData.namaLengkap ?? 'Nama tidak tersedia',
              ),
              TabelIsi(
                title: 'Email:',
                content: UserData.email ?? 'Email tidak tersedia',
              ),
              TabelIsi(
                title: 'Alamat:',
                content: UserData.alamat ?? 'Alamat tidak tersedia',
              ),
              TabelIsi(
                title: 'Telepon:',
                content: UserData.telepon ?? 'Telepon tidak tersedia',
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
