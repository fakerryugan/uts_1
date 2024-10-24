import 'package:flutter/material.dart';
import 'package:uts_1/login_page.dart';

void popupregister(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Berhasil!"),
        content: Text("Akun berhasil dibuat."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}

void popupkosong(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("ada yang kosng"),
      content: Text("tolong isi semua dulu"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("OK"),
        ),
      ],
    ),
  );
}

void popupemail(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Email Tidak Valid"),
      content: Text("Email harus mengandung '@'."),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("OK"),
        ),
      ],
    ),
  );
}

void popupsalahpassword(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Error"),
        content: Text("Password tidak cocok."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}

void popupsalah(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("email atau password salah!"),
      content: Text("tolong isi dengan benar"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("OK"),
        ),
      ],
    ),
  );
}

void popupbenar(BuildContext context, String nama) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("berhasil masuk"),
      content: Text("selamat datang $nama"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profil');
          },
          child: Text("OK"),
        ),
      ],
    ),
  );
}
