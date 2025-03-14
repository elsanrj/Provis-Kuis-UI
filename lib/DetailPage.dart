import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  // Data untuk setiap item
  final List<Map<String, dynamic>> items = [
    {
      'imageUrl': 'assets/tenda2.jpg',
      'title': 'Tenda Kemah Kapasitas 4 Orang',
      'price': 'Rp. 100.000/hari (sisa 5)',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s...',
    },
    {
      'imageUrl': 'assets/tenda 1.jpg',
      'title': 'Tenda Kemah Kapasitas 2 Orang',
      'price': 'Rp. 75.000/hari (sisa 3)',
      'description':
          'This is a smaller tent, perfect for couples or solo campers. Lightweight and easy to set up.',
    },
    {
      'imageUrl': 'assets/tenda2.jpg',
      'title': 'Tenda Kemah Kapasitas 6 Orang',
      'price': 'Rp. 150.000/hari (sisa 2)',
      'description':
          'A spacious tent for larger groups or families. Comes with multiple rooms and excellent ventilation.',
    },
    {
      'imageUrl': 'assets/tenda 1.jpg',
      'title': 'Tenda Kemah Kapasitas 8 Orang',
      'price': 'Rp. 200.000/hari (sisa 1)',
      'description':
          'The largest tent in our collection, ideal for big groups or extended camping trips.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Item', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF2C5C5B),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) => _buildItemCard(item)).toList(),
        ),
      ),
    );
  }

  // Widget untuk membuat card item
  Widget _buildItemCard(Map<String, dynamic> item) {
    return Card(
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.network(
              item['imageUrl'], // Gambar dari data
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title'], // Judul dari data
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  item['price'], // Harga dari data
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF2C5C5B),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  item['description'], // Deskripsi dari data
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DetailPage(),
  ));
}
