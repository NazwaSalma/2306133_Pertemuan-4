import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:MyApp(name: "Teknik Informatika",year:2026)
    ),
  );
}

class MyApp extends StatelessWidget{
  final String name;
  final int year;

 //constructor
  MyApp({required this.name,required this.year});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Pertemuan 4"),
      ),
      body:Container(margin: EdgeInsets.all(10),child: NumberScreen()),
      );
  }
}
class NumberScreen extends StatefulWidget{
    //state
    @override
    _NumberScreenState createState() => _NumberScreenState();
  }
  

  class _NumberScreenState extends State<NumberScreen>{
    String name = 'Produk 1';
    String photo = 'https://fastly.picsum.photos/id/21/3008/2008.jpg?hmac=T8DSVNvP-QldCew7WD4jj_S3mWwxZPqdF0CNPksSko4';
    int qyt = 0;
    int price = 150000;
    int total = 0;

    @override
    Widget build(BuildContext context){
      return Scaffold(
        body:Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 20,
                      child: Column(
                        crossAxisAlignment:  .start,
                        children: [
                          Text(
                          name, 
                          style: TextStyle(fontWeight: .bold, fontSize: 16),
                          ),
                          Image.network(
                            photo,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text("Harga : Rp. ${price.toString()}"),
                          Text("Total : ${total.toString()}"),
                        ],
                      ), 
                    ),
                    Expanded(
                      flex: 6,
                      child:Row(
                        children: [
                          IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (qyt > 0) qyt--;
                              total = price * qyt;
                            });
                          },
                        ),
                          Text(qyt.toString()),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                qyt++;
                              total = price * qyt;
                              });
                            } ,
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        )
      );
    }
}
