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
