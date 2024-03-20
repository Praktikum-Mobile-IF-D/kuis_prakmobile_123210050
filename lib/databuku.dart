import 'package:flutter/material.dart';
import 'package:kuis123210050/data_buku.dart';
import 'package:kuis123210050/detailbuku.dart';

class Buku extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Buku"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: listBuku.length,
          itemBuilder: (BuildContext context, int index){
            DataBuku place = listBuku[index];
            return InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailBuku(place: place))
                );
              },
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
                      child: Image.network(
                          place.imageLink,
                          height: 200,
                          width: 150,
                          fit: BoxFit.cover,
                        )
                    )),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            place.title,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'penulis: ${place.author}',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                           '${place.pages} halaman',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}