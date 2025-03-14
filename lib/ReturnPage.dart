import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ReturnPage(),
  ));
}

class ReturnPage extends StatelessWidget {
  // Data untuk transaksi
  final List<Map<String, dynamic>> transactions = [
    {
      'shopName': 'Joshua-Shop',
      'imageUrl': 'https://example.com/image1.png', // Ganti dengan URL gambar yang sesuai
      'itemName': 'Tenda Kemah Kapasitas 4 orang',
      'pricePerDay': 'Rp. 100.000/hari',
      'totalPrice': 'Total Rp. 200.000',
      'estimatedArrival': 'Estimasi tiba: 15 Mar - 17 Mar',
      'status': 'Kurir sedang dalam menuju ke alamat penyewa',
    },
    {
      'shopName': 'Adventure Gear',
      'imageUrl': 'https://example.com/image2.png', // Ganti dengan URL gambar yang sesuai
      'itemName': 'Sepatu Gunung',
      'pricePerDay': 'Rp. 60.000/hari',
      'totalPrice': 'Total Rp. 120.000',
      'estimatedArrival': 'Tiba: 14 Mar',
      'status': 'Pengembalian selesai. Diterima penyewa',
    },
    {
      'shopName': 'Outdoor World',
      'imageUrl': 'https://example.com/image3.png', // Ganti dengan URL gambar yang sesuai
      'itemName': 'Jaket Gunung',
      'pricePerDay': 'Rp. 50.000/hari',
      'totalPrice': 'Total Rp. 100.000',
      'estimatedArrival': 'Tiba: 01 Mar',
      'status': 'Pengembalian selesai. Diterima penyewa',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Transaksi'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color.fromRGBO(35, 107, 132, 1),
      ),
      body: Column(
        children: [
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol Semua ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Warna tombol Order
                    foregroundColor: Colors.white, // Warna teks tombol
                  ),
                  child: Text('Status Item'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol Order ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Warna tombol Order
                    foregroundColor: Colors.white, // Warna teks tombol
                  ),
                  child: Text('Order'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol Pengembalian ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal, // Warna tombol Pengembalian
                    foregroundColor: Colors.white, // Warna teks tombol
                  ),
                  child: Text('Pengembalian'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFFD2BBA8),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(transaction['shopName'], style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Image.network(
                          transaction['imageUrl'],
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(transaction['itemName'], style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(transaction['pricePerDay'], style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(transaction['totalPrice'], style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text(transaction['estimatedArrival']),
                        Text(transaction['status']),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
