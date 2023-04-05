import 'package:flutter/material.dart';

class keltrapesium extends StatefulWidget {
  const keltrapesium({Key? key}) : super(key: key);

  @override
  State<keltrapesium> createState() => _keltrapesiumState();
}

class _keltrapesiumState extends State<keltrapesium> {
  @override
  String cm = ' CM';
  String hasil = '0';
  double sisi1 = 0;
  double sisi2 = 0;
  double sisi3 = 0;
  double sisi4 = 0;
  String temp = '0';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keliling Trapesium'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: <Widget>[
                Text('Keliling Trapesium', style: TextStyle(fontSize:
                20),),
                SizedBox(height: 20,),
                TextFormField(
                  onChanged: (txt) {
                    setState(() {
                      sisi1 = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Masukkan Sisi 1",
                      suffix: Text('cm'),

                      border: new OutlineInputBorder(
                          borderRadius: new
                          BorderRadius.circular(10.0))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (txt) {
                    setState(() {
                      sisi2 = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Masukkan Sisi 2",
                      suffix: Text('cm'),

                      border: new OutlineInputBorder(
                          borderRadius: new
                          BorderRadius.circular(10.0))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (txt) {
                    setState(() {
                      sisi3 = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Masukkan Sisi 3",
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
                      sisi4 = double.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Masukkan Sisi4",
                      suffix: Text('cm'),
                      border: new OutlineInputBorder(
                        borderRadius: new
                        BorderRadius.circular(10.0),
                      )),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    temp = (sisi1 * sisi2 * sisi3 * sisi4).toString();
                    setState(() {
                      hasil =
                          double.parse(temp).toStringAsFixed(2) + cm;
                    });
                  },
                  child: Text('Hitung Keliling'),
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
