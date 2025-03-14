import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'DetailPage.dart';
import 'ChatBooking.dart';
import 'CheckoutPage.dart';
import 'KeranjangPage.dart';
import 'PromoPage.dart';
import 'ReviewPage.dart';
import 'WishList.dart';
import 'ReturnPage.dart';
import 'StatusPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuiz 1: UI ~Elsa x Ina',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
        '/chat': (context) => ChatBooking(),
        '/transaksi': (context) => TransaksiPage(),
        '/return': (context) => ReturnPage(),
        '/checkout': (context) => Checkout(),
        '/keranjang': (context) => Keranjang(),
        '/promo': (context) => PromoPage(),
        '/review': (context) => Review(),
        '/wishlist': (context) => Wishlist(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pemrograman Visual & Piranti Bergerak',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Quiz 1: UI',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'No kelompok praktikum: 58',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'Halaman Depan',
                  selectionColor: Color.fromARGB(255, 24, 151, 102),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: Text('Detail Item'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/chat');
                },
                child: Text('Chat'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/wishlist');
                },
                child: Text('Wishlist'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/keranjang');
                },
                child: Text('Keranjang'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                child: Text('Checkout'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/review');
                },
                child: Text('Review'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/promo');
                },
                child: Text('Promo'),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: Text('Pembelian Paket')),
              SizedBox(height: 20),
              Text(
                'Transaksi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/transaksi');
                },
                child: Text('Monitor Pemesanan'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/return');
                },
                child: Text('Pengembalian'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
