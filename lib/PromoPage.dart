import 'package:flutter/material.dart';

void main() {
  runApp(const Promo());
}

class Promo extends StatefulWidget {
  const Promo({super.key});
  @override
  PromoPage createState() {
    return PromoPage();
  }
}

class PromoPage extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Promo Page',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Ikon back
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
          title: const Text('Promos', style: TextStyle(fontSize: 20)),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.asset(
              'banner.jpg',
              width: double.infinity, // Lebar penuh
              height: 200, // Sesuaikan tinggi
              fit: BoxFit.cover, // Menyesuaikan gambar ke ukuran container
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Jarak antara search dan button
                  ElevatedButton.icon(
                    onPressed: () {}, // Tidak melakukan apa-apa
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 23,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: Icon(Icons.sort),
                    label: Text("Sort"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
