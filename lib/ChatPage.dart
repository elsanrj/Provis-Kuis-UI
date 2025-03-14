import 'package:flutter/material.dart';

void main() {
  runApp(ChatPage());
}

class ChatPage extends StatelessWidget {
  // Data untuk chat
  final List<Map<String, dynamic>> chats = [
    {
      'name': 'Sylus Sinaga',
      'message': 'Amann. nanti kalau udah ada, saya infokan lagi',
      'time': 'Selasa',
      'imageUrl': 'assets/tent.png', // Ganti dengan path gambar Anda
    },
    {
      'name': 'John Doe',
      'message': '✓✓ P. ada sepatu yg tahan gigit?',
      'time': 'Senin',
      'imageUrl': 'assets/tent.png', // Ganti dengan path gambar Anda
    },
    {
      'name': 'Jane Smith',
      'message': '✓✓ Saya tertarik nyewa tendanya',
      'time': 'Minggu',
      'imageUrl': 'assets/tent.png', // Ganti dengan path gambar Anda
    },
    // Tambahkan data chat lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat'),
          backgroundColor: Color(0xFF4A8C8B),
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Icon back
            onPressed: () {
              // Aksi ketika tombol back ditekan
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: chats.map((chat) {
            return ChatBubble(
              name: chat['name'],
              message: chat['message'],
              time: chat['time'],
              imageUrl: chat['imageUrl'],
            );
          }).toList(),
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
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  const ChatBubble({
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Aksi ketika ChatBubble ditekan
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetailPage(name: name, message: message),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xFFD4C493),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(imageUrl), // Gambar dari data
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    message,
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Text(
              time,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman detail chat
class ChatDetailPage extends StatelessWidget {
  final String name;
  final String message;

  const ChatDetailPage({
    required this.name,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Chat'),
        backgroundColor: Color(0xFF4A8C8B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama: $name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Pesan: $message',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
