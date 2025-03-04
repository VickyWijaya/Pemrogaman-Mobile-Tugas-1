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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("I Am Cat"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Gambar utama dari asset
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/utama.jpg', // Gambar utama dari asset
                  width: double.infinity,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),

              // Grid fakta tentang kucing
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.9,
                  children: [
                    factCard("🐱 Tidur 16 jam sehari... minimal!", "assets/images/tidur.jpg"),
                    factCard("🛏 Kasurmu = kasurku", "assets/images/kasur.jpg"),
                    factCard("🌀 Bisa jadi cair atau padat", "assets/images/cair.jpg"),
                    factCard("🍲 Makan → Tidur → Menguasai dunia", "assets/images/hah.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk kartu fakta kucing
  Widget factCard(String text, String assetPath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar dari asset
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              assetPath,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Teks
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
