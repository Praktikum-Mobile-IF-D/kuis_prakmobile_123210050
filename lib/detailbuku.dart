import 'package:flutter/material.dart';
import 'package:kuis123210050/data_buku.dart';

class DetailBuku extends StatefulWidget {
  const DetailBuku({super.key, required this.place});

  final DataBuku place;

  @override
  State<DetailBuku> createState() => _DetailBukuState();
}

class _DetailBukuState extends State<DetailBuku> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.place.imageLink,
              width: 150,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Penulis       : ${widget.place.author}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bahasa        : ${widget.place.language}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Negara        : ${widget.place.country}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Jumlah Halaman: ${widget.place.pages}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Tahun Terbit  : ${widget.place.year}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Status        : ${widget.place.isAvailable}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () {

                        SnackBar snackBar = SnackBar(content: Text("Berhasil Pinjam"),);
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text("Pinjam")
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}