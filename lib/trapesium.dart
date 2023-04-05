import 'dart:math';

import 'package:flutter/material.dart';
class trapesium extends StatefulWidget {
  const trapesium({Key? key}) : super(key: key);

  @override
  State<trapesium> createState() => _trapesiumState();
}
class _trapesiumState extends State<trapesium> {
  @override
  String cm = ' CM';
  String hasil = '0';
  double alas1 = 0;
  double alas2 = 0;
  double tinggi = 0;
  String temp = '0';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Trapesium'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: <Widget>[
                Text('Luas Trapesium', style: TextStyle(fontSize:
                20),),
                SizedBox(height: 20,),
                TextFormField(
                  onChanged: (txt) {
                    setState(() {
                      alas1 = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Masukkan Alas 1",
                      suffix: Text('cm'),

                      border: new OutlineInputBorder(
                          borderRadius: new
                          BorderRadius.circular(10.0))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (txt) {
                    setState(() {
                      alas2 = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Masukkan Alas 2",
                      suffix: Text('cm'),

                      border: new OutlineInputBorder(
                          borderRadius: new
                          BorderRadius.circular(10.0))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  style: TextStyle(color: Colors.pinkAccent),
                  onChanged: (txt) {
                    setState(() {
                      tinggi = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Masukkan Tinggi",
                      suffix: Text('cm'),
                      border: new OutlineInputBorder(
                        borderRadius: new
                        BorderRadius.circular(10.0),
                      )),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    temp = (0.5 * alas1 * alas2 * tinggi).toString();
                    setState(() {
                      hasil =
                          double.parse(temp).toStringAsFixed(2) + cm;
                    });
                  },
                  child: Text('Hitung Luas'),
                ),

                SizedBox(height: 10),
                Container(
                  child: Text(
                    hasil,
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}