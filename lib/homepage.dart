  import 'package:flutter/material.dart';
  import 'package:uts_tpm/profile.dart';
  import 'package:uts_tpm/shapemenu.dart';
  import 'kalender.dart';



  class Homepage extends StatefulWidget {

    const Homepage({Key? key}) : super(key: key);
    @override
    State<Homepage> createState() => _HomepageState();
  }
  class _HomepageState extends State<Homepage> {
    int _selectedIndex = 0;
    static List<Widget> _option = <Widget>[
      const profile(), const shapemenu(), const kalender(),
    ];

    void _onTap(int index){
      setState(() {
        _selectedIndex = index;
      });
    }

    @override
    Widget build(BuildContext context) {

      return Scaffold(
        body: _option.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onTap,
          selectedItemColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers),
              label: 'Hitung Bangun',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Kalender',
            ),
          ],
          currentIndex: _selectedIndex,

        ),

      );
    }
  }