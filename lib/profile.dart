import 'package:flutter/material.dart';
import 'package:uts_tpm/login.dart';

import 'detail.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Profile'),
          actions: <Widget>[
            IconButton(onPressed: () {
              Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context){
                return loginpage(title:'Login');
    })
              );
    }, icon: Icon(Icons.logout)
        )
    ]
    ) ,
      body:  ListView(
          padding:
          const EdgeInsets.all(8),
          children: [
            SizedBox(height: 30.0),
            Text("PROFILE", textAlign: TextAlign.center, style: TextStyle(color: Colors.blueAccent,
                fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 20.0),
            Container(
              height: 500,
              child:
              Card(
                margin: EdgeInsets.all(8),
                child: InkWell(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(100),
                            child: CircleAvatar(backgroundImage: AssetImage('assets/image/foto.jpeg')),
                          ),
                        ),

                        SizedBox(height: 20.0),
                        Text("Edwinpras Wijaya", textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.blueAccent)),
                        Text("123200074", textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.blueAccent)),
                        SizedBox(height: 20.0),
                        Container(
                          width: MediaQuery.of(context).size.width/4,
                          height: MediaQuery.of(context).size.height/12,
                          child: ElevatedButton(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return detail();
                            }));
                          }, child: Text('Detail') ,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),

    );
  }
}
