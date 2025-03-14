import 'package:flutter/material.dart';

class ChatBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Booking', style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF2C5C5B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 10),
            Center(child: _buildDateLabel('Senin')),
            SizedBox(height: 10),
            _buildItemInfo(),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildChatBubble('Halo min, apakah masih ada? saya mau nyewa', false),
                  _buildChatBubble('Sebentar.. saya cek dulu', true),
                  _buildChatBubble('Min, bagus ga sepatunya min? Saya mau nanjak ke gunung buat 5 hari. Takutnya nanti seharian jebol sepatunya.', false),
                  _buildChatBubble('Aman. mau digigit buaya pun tahan itu sepatunya. Sepatu paling kuat dari yang kami punya itu ^^', true),
                  _buildChatBubble('Mantap la min. Masih ada kan min? takut aku udah diambil orang :(', false),
                  _buildChatBubble('Mohon maaf. Sepatunya sudah disewa orang lain. Dari kami belum update, paling kamis baru ada kalau masih mau disewa', true),
                  _buildChatBubble('YAHH MIN :(( yaudah min, nanti infokan lagi ya....', false),
                  _buildChatBubble('Amann. nanti kalau udah ada, saya infokan lagi', true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFF2C5C5B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person, color: Colors.black),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sylus Sinaga ~DragonShop', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              Text('Aktif 15 menit lalu', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDateLabel(String date) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(date, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildItemInfo() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.image, color: Colors.white),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sepatu Gunung Terbaik', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Rp. 60.000/hari (sisa 1)', style: TextStyle(color: Colors.green)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubble(String message, bool isSender) {
    return Align(
      alignment: isSender ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSender ? Colors.grey[300] : Color(0xFFC4A484),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: isSender ? Radius.circular(0) : Radius.circular(10),
            bottomRight: isSender ? Radius.circular(10) : Radius.circular(0),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(color: isSender ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
