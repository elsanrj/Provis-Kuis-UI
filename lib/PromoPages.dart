import 'package:flutter/material.dart';

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D4F59), // Set background color to dark teal
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Promo Header
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.brown[300],
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                'Promo',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            // Banner
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/happy_summer_camp.png'), // Ganti dengan path gambar yang sesuai
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Promo Labels
            Container(
              height: 60,
              margin: EdgeInsets.only(top: 12, bottom: 12),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPromoLabel('Diskon\n15% s/d\nRp20rb'),
                  _buildPromoLabel('Diskon\n10% s/d\nRp40rb'),
                  _buildPromoLabel('Diskon\n50% s/d\nRp1jt'),
                  _buildPromoLabel('Diskon\n5% s/d\nRp30rb'),
                  _buildPromoLabel('Diskon\n75% s/d Rp1,5jt'),
                ],
              ),
            ),
            // Product Cards
            GridView.count(
              shrinkWrap: true, // Agar GridView dapat di-scroll di dalam SingleChildScrollView
              physics: NeverScrollableScrollPhysics(), // Nonaktifkan scroll internal GridView
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              padding: EdgeInsets.all(16),
              childAspectRatio: 0.8,
              children: [
                _buildPromoCard(
                  title: 'Tas Camping A',
                  priceOld: 'Rp. 50.000/hari',
                  priceNew: 'Rp. 20.000/hari (sisa 5)',
                  image: 'assets/tas_camping_a.png', // Ganti dengan path gambar yang sesuai
                  description: 'Tas kuat dan muat banyak barang.',
                ),
                _buildPromoCard(
                  title: 'Tenda Kemah Kapasitas 4 Orang',
                  priceOld: 'Rp. 100.000/hari',
                  priceNew: 'Rp. 60.000/hari (sisa 5)',
                  image: 'assets/tenda_kemah_4_orang.png', // Ganti dengan path gambar yang sesuai
                  description: 'Tenda Kemah Kapasitas 4 Orang',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPromoLabel(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFF1F5257),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildPromoCard({
    required String title,
    required String priceOld,
    required String priceNew,
    required String image,
    required String description,
  }) {
    return Card(
      color: Color(0xFFD2BBA8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              priceOld,
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.red,
              ),
            ),
            Text(
              priceNew,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PromoPage(),
  ));
}
