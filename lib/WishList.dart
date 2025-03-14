import 'package:flutter/material.dart';

void main() {
  runApp(const Wishlist());
}

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});
  @override
  WishlistPage createState() {
    return WishlistPage();
  }
}

class WishlistPage extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wishlist Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Ikon back
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
          title: const Text('Wishlist(5)', style: TextStyle(fontSize: 20)),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Tambahkan aksi saat ikon shopping cart diklik
              },
            ),
          ],
        ),
        body: ListView(
          children: [
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
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 12,
                  ), // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Menyamakan bagian atas
                        children: [
                          Expanded(
                            child: Wrap(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
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
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
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
                                                  Text(
                                                    "Rp50.000",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,

                                              children: [
                                                IconButton(
                                                  iconSize: 25,
                                                  icon: Icon(Icons.delete),
                                                  onPressed: () {},
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    // Tambahkan aksi ketika tombol ditekan
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors
                                                            .blue, // Warna tombol
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 24,
                                                          vertical: 12,
                                                        ), // Padding tombol
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ), // Sudut melengkung
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Colors
                                                              .white, // Warna teks
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Jarak antara nama dan teks
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 12,
                  ), // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Menyamakan bagian atas
                        children: [
                          Expanded(
                            child: Wrap(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
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
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
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
                                                  Text(
                                                    "Rp50.000",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,

                                              children: [
                                                IconButton(
                                                  iconSize: 25,
                                                  icon: Icon(Icons.delete),
                                                  onPressed: () {},
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    // Tambahkan aksi ketika tombol ditekan
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors
                                                            .blue, // Warna tombol
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 24,
                                                          vertical: 12,
                                                        ), // Padding tombol
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ), // Sudut melengkung
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Colors
                                                              .white, // Warna teks
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Jarak antara nama dan teks
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 12,
                  ), // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Menyamakan bagian atas
                        children: [
                          Expanded(
                            child: Wrap(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
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
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
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
                                                  Text(
                                                    "Rp50.000",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,

                                              children: [
                                                IconButton(
                                                  iconSize: 25,
                                                  icon: Icon(Icons.delete),
                                                  onPressed: () {},
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    // Tambahkan aksi ketika tombol ditekan
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors
                                                            .blue, // Warna tombol
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 24,
                                                          vertical: 12,
                                                        ), // Padding tombol
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ), // Sudut melengkung
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Colors
                                                              .white, // Warna teks
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Jarak antara nama dan teks
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 12,
                  ), // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Menyamakan bagian atas
                        children: [
                          Expanded(
                            child: Wrap(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
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
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
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
                                                  Text(
                                                    "Rp50.000",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,

                                              children: [
                                                IconButton(
                                                  iconSize: 25,
                                                  icon: Icon(Icons.delete),
                                                  onPressed: () {},
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    // Tambahkan aksi ketika tombol ditekan
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors
                                                            .blue, // Warna tombol
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 24,
                                                          vertical: 12,
                                                        ), // Padding tombol
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ), // Sudut melengkung
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Colors
                                                              .white, // Warna teks
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Jarak antara nama dan teks
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 12,
                  ), // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Menyamakan bagian atas
                        children: [
                          Expanded(
                            child: Wrap(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
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
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
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
                                                  Text(
                                                    "Rp50.000",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,

                                              children: [
                                                IconButton(
                                                  iconSize: 25,
                                                  icon: Icon(Icons.delete),
                                                  onPressed: () {},
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    // Tambahkan aksi ketika tombol ditekan
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors
                                                            .blue, // Warna tombol
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 24,
                                                          vertical: 12,
                                                        ), // Padding tombol
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ), // Sudut melengkung
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Colors
                                                              .white, // Warna teks
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Jarak antara nama dan teks
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
      ),
    );
  }
}
