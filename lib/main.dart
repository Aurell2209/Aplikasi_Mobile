import 'package:aplikasi_tugas1/beranda.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lia Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 248, 153, 252),
        ),
      ),
      home: const HalamanUtama(),
    );
  }
}

// Text HalamanUtama
class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FilmKuu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.search),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 130, 143, 255),
      ),
      body: Column(
        // Rata kiri konten
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aurelia",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("5B Informatika"),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.school, size: 30),
              ),
              const Text("Universitas PGRI Semarang"),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                ), // Beri jarak dari teks PGRI
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HalamanKedua(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 64, 184, 68),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Simpan"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
