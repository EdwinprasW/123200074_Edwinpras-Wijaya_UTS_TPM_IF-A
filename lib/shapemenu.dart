import 'package:flutter/material.dart';
import 'package:uts_tpm/tabungk.dart';
import 'package:uts_tpm/trapesium.dart';
import 'package:uts_tpm/tabung.dart';
import 'trapesiumk.dart';

class shapemenu extends StatefulWidget {
  const shapemenu({Key? key}) : super(key: key);

  @override
  State<shapemenu> createState() => _shapemenuState();
}

class _shapemenuState extends State<shapemenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Hitung Bangun'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/6,
              child: ElevatedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return trapesium();
                }));
              }, child: Text('Rumus Luas Trapesium') ,),
            ),

            SizedBox(height: 20),

            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/6,
              child: ElevatedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return keltrapesium();
                }));
              }, child: Text('Rumus Keliling Trapesium') ,),
            ),

            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/6,
              child: ElevatedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return tabung();
                }));
              }, child: Text('Rumus Volume Tabung') ,),
            ),

            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/6,
              child: ElevatedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return keltabung();
                }));
              }, child: Text('Rumus Luas Permukaan Tabung') ,),
            ),

          ],
        ),
      ),

    );
  }
}
