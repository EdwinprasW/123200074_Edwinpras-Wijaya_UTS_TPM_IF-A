import 'package:flutter/material.dart';

class keltabung extends StatefulWidget {
  const keltabung({Key? key}) : super(key: key);

  @override
  State<keltabung> createState() => _keltabungState();
}

class _keltabungState extends State<keltabung> {
  @override
  String cm = ' CM';
  String hasil = '0';
  double jari = 0;
  double tinggi = 0;
  String temp = '0';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Permukaan Tabung'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: <Widget>[
                Text('Luas Permukaan', style: TextStyle(fontSize:
                20),),
                SizedBox(height: 20,),
                TextFormField(
                  onChanged: (txt) {
                    setState(() {
                      jari = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Masukkan jari jari",
                      suffix: Text('cm'),

                      border: new OutlineInputBorder(
                          borderRadius: new
                          BorderRadius.circular(10.0))),
                ),
                SizedBox(height: 20),
                TextFormField(
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
                          BorderRadius.circular(10.0))),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    temp = ((2*(22/7)*jari*tinggi) + (2*(22/7)*jari*jari)).toString();
                    setState(() {
                      hasil =
                          double.parse(temp).toStringAsFixed(2) + cm;
                    });
                  },
                  child: Text('Hitung Luas Permukaan'),
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
