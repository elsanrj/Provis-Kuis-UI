import 'package:flutter/material.dart';

void main() {
  runApp(const Checkout());
}

class Checkout extends StatefulWidget {
  const Checkout({super.key});
  @override
  CheckoutPage createState() {
    return CheckoutPage();
  }
}

class CheckoutPage extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkout Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Ikon back
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
          title: const Text('Checkout', style: TextStyle(fontSize: 20,color: Colors.white)),
          centerTitle: true,
          backgroundColor: Color(0xFF2C5C5B),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.zero, // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alamat Pengiriman',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.place),
                                  Text('Jl. Setiabudhi'),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right), // Ikon back
                            onPressed: () {
                              Navigator.pop(
                                context,
                              ); // Kembali ke halaman sebelumnya
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.zero, // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "tas1.webp", //pastikan file ada di [project]/assets/images
                                height: 65,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start, // Pastikan rata kiri
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          // Tambahkan aksi saat diklik
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod.",
                                              style: TextStyle(fontSize: 14),
                                              // Batasi hanya 1 baris
                                              overflow:
                                                  TextOverflow
                                                      .ellipsis, // Tambahkan "..." jika teks terpotong
                                            ),
                                            Text(
                                              "Ukuran 15x20",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Rp50.000",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Text(
                                                  "x1",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.zero, // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "alatmasak2.jpg", //pastikan file ada di [project]/assets/images
                                height: 65,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start, // Pastikan rata kiri
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          // Tambahkan aksi saat diklik
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod.",
                                              style: TextStyle(fontSize: 14),
                                              // Batasi hanya 1 baris
                                              overflow:
                                                  TextOverflow
                                                      .ellipsis, // Tambahkan "..." jika teks terpotong
                                            ),
                                            Text(
                                              "Ukuran 15x20",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Rp50.000",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Text(
                                                  "x1",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.zero, // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "paketA.jpg", //pastikan file ada di [project]/assets/images
                                height: 65,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start, // Pastikan rata kiri
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          // Tambahkan aksi saat diklik
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod.",
                                              style: TextStyle(fontSize: 14),
                                              // Batasi hanya 1 baris
                                              overflow:
                                                  TextOverflow
                                                      .ellipsis, // Tambahkan "..." jika teks terpotong
                                            ),
                                            Text(
                                              "Ukuran 15x20",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Rp50.000",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Text(
                                                  "x1",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.zero, // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Pengiriman'), Text('Rp10.000')],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Pesanan'),
                              Text('Rp160.000'),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  spacing: 5,
                                  children: [
                                    Icon(Icons.confirmation_num),
                                    Text('Voucher'),
                                  ],
                                ),
                                IconButton(
                                  icon: Icon(Icons.chevron_right), // Ikon back
                                  onPressed: () {
                                    // Kembali ke halaman sebelumnya
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          height: 100,
          color: Colors.grey[200],
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 50,
                  children: [
                    Row(
                      spacing: 5,
                      children: [Icon(Icons.paid), Text('Metode Pembayaran')],
                    ),
                    IconButton(
                      icon: Icon(Icons.chevron_right), // Ikon back
                      onPressed: () {
                        // Kembali ke halaman sebelumnya
                      },
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 20,
                children: [
                  Column(
                    children: [
                      Text('Subtotal'),
                      Text(
                        'Rp160.000',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan aksi ketika tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2C5C5B), // Warna tombol
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ), // Padding tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ), // Sudut melengkung
                      ),
                    ),
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white, // Warna teks
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
