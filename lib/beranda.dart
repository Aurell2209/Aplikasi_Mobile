import 'package:flutter/material.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Kedua"),
        backgroundColor: const Color.fromARGB(255, 251, 203, 58),
      ),
      body: Text("Halaman Dua"),
    );
  }
}
