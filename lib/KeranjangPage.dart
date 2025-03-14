import 'package:flutter/material.dart';

void main() {
  runApp(const Keranjang());
}

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});
  @override
  KeranjangPage createState() {
    return KeranjangPage();
  }
}

class KeranjangPage extends State<Keranjang> {
  bool isChecked = false;
  String? pilihan;
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];
  TextEditingController _controller = TextEditingController(text: "1");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keranjang Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Ikon back
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
          title: const Text('Keranjang(5)', style: TextStyle(fontSize: 20)),
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
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 20,
                        top: 20,
                        bottom: 20,
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
                                    Checkbox(
                                      value: isChecked,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isChecked =
                                              newValue ??
                                              false; // Mengubah status checkbox
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5),
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
                                                  Row(children: []),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                      border: Border.all(),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 5,
                                                        ),
                                                    child: DropdownButton<
                                                      String
                                                    >(
                                                      value: pilihan,
                                                      hint: Text(
                                                        'Pilih',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      isDense:
                                                          true, // Mengurangi tinggi dropdown
                                                      itemHeight:
                                                          50, // Atur tinggi setiap item dropdown
                                                      onChanged: (
                                                        String? newValue,
                                                      ) {
                                                        setState(() {
                                                          pilihan = newValue;
                                                        });
                                                      },
                                                      items:
                                                          [
                                                            'Item 1',
                                                            'Item 2',
                                                            'Item 3',
                                                          ].map((String item) {
                                                            return DropdownMenuItem<
                                                              String
                                                            >(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                              ), // Ukuran teks dropdown
                                                            );
                                                          }).toList(),
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
                                                Container(
                                                  width: 77,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                right:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.remove,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              if (value > 1)
                                                                _controller
                                                                        .text =
                                                                    (value - 1)
                                                                        .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 25,
                                                        child: Center(
                                                          // Pastikan teks ada di tengah
                                                          child: TextField(
                                                            controller:
                                                                _controller,
                                                            textAlign:
                                                                TextAlign
                                                                    .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                            ), // Font lebih besar agar tidak tenggelam
                                                            decoration: InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              isDense:
                                                                  true, // Pastikan tidak ada padding tambahan
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                    vertical: 2,
                                                                  ), // Sesuaikan padding vertikal
                                                            ),
                                                            onChanged: (value) {
                                                              setState(() {
                                                                if (value
                                                                        .isEmpty ||
                                                                    int.tryParse(
                                                                          value,
                                                                        ) ==
                                                                        null) {
                                                                  _controller
                                                                          .text =
                                                                      "1";
                                                                }
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                left:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              _controller.text =
                                                                  (value + 1)
                                                                      .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ],
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
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 20,
                        top: 20,
                        bottom: 20,
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
                                    Checkbox(
                                      value: isChecked,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isChecked =
                                              newValue ??
                                              false; // Mengubah status checkbox
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5),
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
                                                  Row(children: []),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                      border: Border.all(),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 5,
                                                        ),
                                                    child: DropdownButton<
                                                      String
                                                    >(
                                                      value: pilihan,
                                                      hint: Text(
                                                        'Pilih',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      isDense:
                                                          true, // Mengurangi tinggi dropdown
                                                      itemHeight:
                                                          50, // Atur tinggi setiap item dropdown
                                                      onChanged: (
                                                        String? newValue,
                                                      ) {
                                                        setState(() {
                                                          pilihan = newValue;
                                                        });
                                                      },
                                                      items:
                                                          [
                                                            'Item 1',
                                                            'Item 2',
                                                            'Item 3',
                                                          ].map((String item) {
                                                            return DropdownMenuItem<
                                                              String
                                                            >(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                              ), // Ukuran teks dropdown
                                                            );
                                                          }).toList(),
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
                                                Container(
                                                  width: 77,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                right:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.remove,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              if (value > 1)
                                                                _controller
                                                                        .text =
                                                                    (value - 1)
                                                                        .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 25,
                                                        child: Center(
                                                          // Pastikan teks ada di tengah
                                                          child: TextField(
                                                            controller:
                                                                _controller,
                                                            textAlign:
                                                                TextAlign
                                                                    .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                            ), // Font lebih besar agar tidak tenggelam
                                                            decoration: InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              isDense:
                                                                  true, // Pastikan tidak ada padding tambahan
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                    vertical: 2,
                                                                  ), // Sesuaikan padding vertikal
                                                            ),
                                                            onChanged: (value) {
                                                              setState(() {
                                                                if (value
                                                                        .isEmpty ||
                                                                    int.tryParse(
                                                                          value,
                                                                        ) ==
                                                                        null) {
                                                                  _controller
                                                                          .text =
                                                                      "1";
                                                                }
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                left:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              _controller.text =
                                                                  (value + 1)
                                                                      .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ],
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
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 20,
                        top: 20,
                        bottom: 20,
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
                                    Checkbox(
                                      value: isChecked,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isChecked =
                                              newValue ??
                                              false; // Mengubah status checkbox
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5),
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
                                                  Row(children: []),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                      border: Border.all(),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 5,
                                                        ),
                                                    child: DropdownButton<
                                                      String
                                                    >(
                                                      value: pilihan,
                                                      hint: Text(
                                                        'Pilih',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      isDense:
                                                          true, // Mengurangi tinggi dropdown
                                                      itemHeight:
                                                          50, // Atur tinggi setiap item dropdown
                                                      onChanged: (
                                                        String? newValue,
                                                      ) {
                                                        setState(() {
                                                          pilihan = newValue;
                                                        });
                                                      },
                                                      items:
                                                          [
                                                            'Item 1',
                                                            'Item 2',
                                                            'Item 3',
                                                          ].map((String item) {
                                                            return DropdownMenuItem<
                                                              String
                                                            >(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                              ), // Ukuran teks dropdown
                                                            );
                                                          }).toList(),
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
                                                Container(
                                                  width: 77,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                right:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.remove,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              if (value > 1)
                                                                _controller
                                                                        .text =
                                                                    (value - 1)
                                                                        .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 25,
                                                        child: Center(
                                                          // Pastikan teks ada di tengah
                                                          child: TextField(
                                                            controller:
                                                                _controller,
                                                            textAlign:
                                                                TextAlign
                                                                    .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                            ), // Font lebih besar agar tidak tenggelam
                                                            decoration: InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              isDense:
                                                                  true, // Pastikan tidak ada padding tambahan
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                    vertical: 2,
                                                                  ), // Sesuaikan padding vertikal
                                                            ),
                                                            onChanged: (value) {
                                                              setState(() {
                                                                if (value
                                                                        .isEmpty ||
                                                                    int.tryParse(
                                                                          value,
                                                                        ) ==
                                                                        null) {
                                                                  _controller
                                                                          .text =
                                                                      "1";
                                                                }
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                left:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              _controller.text =
                                                                  (value + 1)
                                                                      .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ],
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
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 20,
                        top: 20,
                        bottom: 20,
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
                                    Checkbox(
                                      value: isChecked,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isChecked =
                                              newValue ??
                                              false; // Mengubah status checkbox
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5),
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
                                                  Row(children: []),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                      border: Border.all(),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 5,
                                                        ),
                                                    child: DropdownButton<
                                                      String
                                                    >(
                                                      value: pilihan,
                                                      hint: Text(
                                                        'Pilih',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      isDense:
                                                          true, // Mengurangi tinggi dropdown
                                                      itemHeight:
                                                          50, // Atur tinggi setiap item dropdown
                                                      onChanged: (
                                                        String? newValue,
                                                      ) {
                                                        setState(() {
                                                          pilihan = newValue;
                                                        });
                                                      },
                                                      items:
                                                          [
                                                            'Item 1',
                                                            'Item 2',
                                                            'Item 3',
                                                          ].map((String item) {
                                                            return DropdownMenuItem<
                                                              String
                                                            >(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                              ), // Ukuran teks dropdown
                                                            );
                                                          }).toList(),
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
                                                Container(
                                                  width: 77,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                right:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.remove,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              if (value > 1)
                                                                _controller
                                                                        .text =
                                                                    (value - 1)
                                                                        .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 25,
                                                        child: Center(
                                                          // Pastikan teks ada di tengah
                                                          child: TextField(
                                                            controller:
                                                                _controller,
                                                            textAlign:
                                                                TextAlign
                                                                    .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                            ), // Font lebih besar agar tidak tenggelam
                                                            decoration: InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              isDense:
                                                                  true, // Pastikan tidak ada padding tambahan
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                    vertical: 2,
                                                                  ), // Sesuaikan padding vertikal
                                                            ),
                                                            onChanged: (value) {
                                                              setState(() {
                                                                if (value
                                                                        .isEmpty ||
                                                                    int.tryParse(
                                                                          value,
                                                                        ) ==
                                                                        null) {
                                                                  _controller
                                                                          .text =
                                                                      "1";
                                                                }
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                left:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              _controller.text =
                                                                  (value + 1)
                                                                      .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ],
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
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 20,
                        top: 20,
                        bottom: 20,
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
                                    Checkbox(
                                      value: isChecked,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          isChecked =
                                              newValue ??
                                              false; // Mengubah status checkbox
                                        });
                                      },
                                    ),
                                    SizedBox(width: 5),
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
                                                  Row(children: []),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                      border: Border.all(),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 5,
                                                        ),
                                                    child: DropdownButton<
                                                      String
                                                    >(
                                                      value: pilihan,
                                                      hint: Text(
                                                        'Pilih',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      isDense:
                                                          true, // Mengurangi tinggi dropdown
                                                      itemHeight:
                                                          50, // Atur tinggi setiap item dropdown
                                                      onChanged: (
                                                        String? newValue,
                                                      ) {
                                                        setState(() {
                                                          pilihan = newValue;
                                                        });
                                                      },
                                                      items:
                                                          [
                                                            'Item 1',
                                                            'Item 2',
                                                            'Item 3',
                                                          ].map((String item) {
                                                            return DropdownMenuItem<
                                                              String
                                                            >(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                              ), // Ukuran teks dropdown
                                                            );
                                                          }).toList(),
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
                                                Container(
                                                  width: 77,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                right:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.remove,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              if (value > 1)
                                                                _controller
                                                                        .text =
                                                                    (value - 1)
                                                                        .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 25,
                                                        child: Center(
                                                          // Pastikan teks ada di tengah
                                                          child: TextField(
                                                            controller:
                                                                _controller,
                                                            textAlign:
                                                                TextAlign
                                                                    .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                            ), // Font lebih besar agar tidak tenggelam
                                                            decoration: InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              isDense:
                                                                  true, // Pastikan tidak ada padding tambahan
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                    vertical: 2,
                                                                  ), // Sesuaikan padding vertikal
                                                            ),
                                                            onChanged: (value) {
                                                              setState(() {
                                                                if (value
                                                                        .isEmpty ||
                                                                    int.tryParse(
                                                                          value,
                                                                        ) ==
                                                                        null) {
                                                                  _controller
                                                                          .text =
                                                                      "1";
                                                                }
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                              border: Border(
                                                                left:
                                                                    BorderSide(),
                                                              ),
                                                            ),
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 8,
                                                          ), // Ukuran ikon sedikit diperbesar
                                                          padding:
                                                              EdgeInsets
                                                                  .zero, // Menghilangkan padding default
                                                          constraints:
                                                              BoxConstraints.tightFor(
                                                                width: 24,
                                                                height: 24,
                                                              ), // Ukuran lebih kecil
                                                          onPressed: () {
                                                            setState(() {
                                                              int value =
                                                                  int.tryParse(
                                                                    _controller
                                                                        .text,
                                                                  ) ??
                                                                  1;
                                                              _controller.text =
                                                                  (value + 1)
                                                                      .toString();
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ],
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
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          height: 100,
          color: Colors.grey[200],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked =
                                newValue ?? false; // Mengubah status checkbox
                          });
                        },
                      ),
                      Text('Select All'),
                    ],
                  ),
                  Column(
                    spacing: 5,
                    children: [
                      Text(
                        'Subtotal: Rp100.000',
                        style: TextStyle(fontSize: 12),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Tambahkan aksi ketika tombol ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Warna tombol
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
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Warna teks
                          ),
                        ),
                      ),
                    ],
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
