import 'package:flutter/material.dart';

void main() {
  runApp(const Review());
}

int _selectedRating = 5; // Default 5 bintang

class Review extends StatefulWidget {
  const Review({super.key});
  @override
  ReviewPage createState() {
    return ReviewPage();
  }
}

class ReviewPage extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review Page',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Ikon back
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
          title: const Text(
            'Rating and Reviews',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Tambahkan di dalam Column
                SizedBox(height: 15),
                SegmentedButton<int>(
                  segments: List.generate(5, (index) {
                    int rating = 5 - index;
                    return ButtonSegment<int>(
                      value: rating,
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4), // Jarak antara ikon dan angka
                          Text("$rating"),
                        ],
                      ),
                    );
                  }),
                  selected: {
                    _selectedRating,
                  }, // Pastikan _selectedRating ada di State
                  onSelectionChanged: (newSelection) {
                    setState(() {
                      _selectedRating = newSelection.first;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(
                    10,
                  ), // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 5,
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
                          // Avatar di sebelah kiri
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ), // Ikon default
                          ),
                          SizedBox(width: 12), // Jarak antara avatar dan teks
                          // Nama user dan teks
                          Expanded(
                            child: Wrap(
                              runSpacing: 8,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Rubah Anonim", // Gantilah dengan nama user yang sesuai
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  borderRadius: BorderRadius.circular(8),
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                        height: 50,
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 300,
                                        ), // Batasi lebar maksimum
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start, // Pastikan rata kiri
                                          children: [
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod.",
                                              style: TextStyle(fontSize: 13),
                                              maxLines:
                                                  1, // Batasi hanya 1 baris
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ), // Jarak antara nama dan teks
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                  ],
                                ),
                                Text(
                                  '13-03-2025 10:00',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod. Aenean ante metus, ornare non dui eget, pharetra volutpat turpis. Aliquam porta quam ut finibus dignissim. Phasellus luctus rutrum odio at ultricies. Phasellus rutrum magna accumsan tempor tincidunt.",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Helpful?',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    IconButton(
                                      iconSize: 20,
                                      icon: Icon(Icons.thumb_up),
                                      onPressed: () {},
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
                ),
                Padding(
                  padding: EdgeInsets.all(
                    10,
                  ), // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 5,
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
                          // Avatar di sebelah kiri
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ), // Ikon default
                          ),
                          SizedBox(width: 12), // Jarak antara avatar dan teks
                          // Nama user dan teks
                          Expanded(
                            child: Wrap(
                              runSpacing: 8,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Rubah Anonim", // Gantilah dengan nama user yang sesuai
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  borderRadius: BorderRadius.circular(8),
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                        height: 50,
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 300,
                                        ), // Batasi lebar maksimum
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start, // Pastikan rata kiri
                                          children: [
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod.",
                                              style: TextStyle(fontSize: 13),
                                              maxLines:
                                                  1, // Batasi hanya 1 baris
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ), // Jarak antara nama dan teks
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                  ],
                                ),
                                Text(
                                  '13-03-2025 10:00',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod. Aenean ante metus, ornare non dui eget, pharetra volutpat turpis. Aliquam porta quam ut finibus dignissim. Phasellus luctus rutrum odio at ultricies. Phasellus rutrum magna accumsan tempor tincidunt.",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Helpful?',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    IconButton(
                                      iconSize: 20,
                                      icon: Icon(Icons.thumb_up),
                                      onPressed: () {},
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
                ),
                Padding(
                  padding: EdgeInsets.all(
                    10,
                  ), // Jarak luar antara card dan elemen lain
                  child: Card(
                    elevation: 5,
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
                          // Avatar di sebelah kiri
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ), // Ikon default
                          ),
                          SizedBox(width: 12), // Jarak antara avatar dan teks
                          // Nama user dan teks
                          Expanded(
                            child: Wrap(
                              runSpacing: 8,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Rubah Anonim", // Gantilah dengan nama user yang sesuai
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  borderRadius: BorderRadius.circular(8),
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                        height: 50,
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 300,
                                        ), // Batasi lebar maksimum
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start, // Pastikan rata kiri
                                          children: [
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod.",
                                              style: TextStyle(fontSize: 13),
                                              maxLines:
                                                  1, // Batasi hanya 1 baris
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ), // Jarak antara nama dan teks
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                    Image.asset(
                                      "kucingindomaret.jpg", //pastikan file ada di [project]/assets/images
                                      height: 120,
                                    ),
                                  ],
                                ),
                                Text(
                                  '13-03-2025 10:00',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non ligula dictum sapien cursus euismod. Aenean ante metus, ornare non dui eget, pharetra volutpat turpis. Aliquam porta quam ut finibus dignissim. Phasellus luctus rutrum odio at ultricies. Phasellus rutrum magna accumsan tempor tincidunt.",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Helpful?',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    IconButton(
                                      iconSize: 20,
                                      icon: Icon(Icons.thumb_up),
                                      onPressed: () {},
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
                ),
              ],
            ),
          ],
        ),
      ), //Scaffold
    );
  }
}
