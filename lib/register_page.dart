import 'package:flutter/material.dart';
import 'package:uts_1/widget/pop_up.dart';
import 'userdara.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController namaLengkapController = TextEditingController();
  final TextEditingController alamatdController = TextEditingController();
  final TextEditingController telepondController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              controller: namaLengkapController,
              decoration: InputDecoration(
                  labelText: 'Nama Lengkap', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: alamatdController,
              decoration: InputDecoration(
                  labelText: 'alamat', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: telepondController,
              decoration: InputDecoration(
                  labelText: 'telepon', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                  labelText: 'Confirm Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (namaLengkapController.text.isEmpty ||
                    emailController.text.isEmpty ||
                    alamatdController.text.isEmpty ||
                    telepondController.text.isEmpty ||
                    passwordController.text.isEmpty ||
                    confirmPasswordController.text.isEmpty) {
                  popupkosong(context);
                } else if (!emailController.text.contains('@')) {
                  popupemail(context);
                } else if (passwordController.text !=
                    confirmPasswordController.text) {
                  popupsalahpassword(context);
                } else {
                  UserData.namaLengkap = namaLengkapController.text;
                  UserData.email = emailController.text;
                  UserData.alamat = alamatdController.text;
                  UserData.telepon = telepondController.text;
                  UserData.password = passwordController.text;

                  popupregister(context);
                }
              },
              child: Text('Daftar'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Sudah punya akun ? Login',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
