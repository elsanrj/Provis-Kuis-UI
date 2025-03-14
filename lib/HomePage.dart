import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Data untuk produk tenda
  final List<Map<String, dynamic>> products = [
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Tenda Kemah Kapasitas 4 Orang',
      'price': 'Rp. 100.000/hari (sisa 5)',
      'description': 'Tenda yang tahan angin dan nyaman untuk bersama',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Tenda Kemah Kapasitas 2 Orang',
      'price': 'Rp. 75.000/hari (sisa 3)',
      'description': 'Tenda ringan dan mudah dibawa, cocok untuk solo traveler',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Tenda Kemah Kapasitas 6 Orang',
      'price': 'Rp. 150.000/hari (sisa 2)',
      'description': 'Tenda besar dengan ruang yang luas, cocok untuk keluarga',
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Sepatu Gunung Terbaek',
      'price': 'Rp. 60.000/hari (sisa 1)',
      'description': 'Sepatu yang nyaman, tahan banting, dan cocok disegala cuaca',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cari Item'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Cari Item',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          // Categories
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryChip(label: 'Semua'),
                CategoryChip(label: 'Ransel'),
                CategoryChip(label: 'Alat Masak'),
                CategoryChip(label: 'Penerangan'),
                CategoryChip(label: 'Alat Tidur'),
                CategoryChip(label: 'Jaket'),
                CategoryChip(label: 'Sepatu'),
                CategoryChip(label: 'Tenda'),
                CategoryChip(label: 'Lainnya'),
              ],
            ),
          ),
          // Product Grid
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: products.map((product) {
                return ProductCard(
                  imageUrl: product['imageUrl'],
                  title: product['title'],
                  price: product['price'],
                  description: product['description'],
                );
              }).toList(),
            ),
          ),
          _buildPackageList(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal, // Background warna teal
        selectedItemColor: Colors.white, // Warna icon dan label saat aktif
        unselectedItemColor: Colors.white.withOpacity(0.7), // Warna icon dan label saat tidak aktif
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }

  Widget _buildPackageList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildPackageCard('PAKET A', 'Rp. 150.000/hari (sisa 3)', 'Tas, tenda, jaket, dan alat tidur', 'https://example.com/paketA.jpg'),
          _buildPackageCard('PAKET B', 'Rp. 200.000/hari (sisa 5)', 'Tas, tenda, penerangan, dan alat tidur', 'https://example.com/paketB.jpg'),
          _buildPackageCard('PAKET C', 'Rp. 300.000/hari (sisa 5)', 'Tas, tenda, alat masak, jaket, penerangan, dan alat tidur', 'https://example.com/paketC.jpg'),
        ],
      ),
    );
  }

  Widget _buildPackageCard(String title, String price, String description, String imageUrl) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(imageUrl, width: 100, height: 100, fit: BoxFit.cover),
          ),
          SizedBox(height: 5.0),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(price, style: TextStyle(color: Colors.teal)),
          Text(description, style: TextStyle(fontSize: 10.0), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(label),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String description;

  const ProductCard({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.network(imageUrl, fit: BoxFit.cover, width: double.infinity),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(price, style: TextStyle(color: Colors.teal)),
                Text(description, style: TextStyle(fontSize: 12.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
