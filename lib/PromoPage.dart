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
          title: const Text(
            'Promos',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(children: []),
      ),
    );
  }
}
