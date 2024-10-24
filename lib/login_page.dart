import 'package:flutter/material.dart';
import 'package:uts_1/userdara.dart';
import 'package:uts_1/widget/pop_up.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  labelText: 'Email Anda', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                  labelText: 'Password Anda', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                {
                  if (emailcontroller.text == UserData.email &&
                      passwordcontroller.text == UserData.password) {
                    popupbenar(context, UserData.namaLengkap);
                  } else {
                    popupsalah(context);
                  }
                }
              },
              child: Text('Login'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/resgister');
                },
                child: Text(
                  'Belum punya akun ? Daftar',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
