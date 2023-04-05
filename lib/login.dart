import 'package:flutter/material.dart';
import 'package:uts_tpm/homepage.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key, required this.title}) : super(key: key);

  final String title;



  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  String username = "";
  String password = "";
  bool isLoginSuccess = true;
  bool isUsername = true;
  bool isPassword = true;

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('Login Screen'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 50,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 40,
              child: TextFormField(
                onChanged: (value) {
                username = value;
              },decoration: InputDecoration(hintText: 'Username',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 40,
              child: TextFormField(
                onChanged: (value) {
                password = value;
              },obscureText: true, decoration: InputDecoration(hintText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 40,
              child: ElevatedButton( style: ElevatedButton.styleFrom(
                  primary: (isLoginSuccess) ? Colors.blue : Colors.red
              ),
                onPressed: (){
                  String text = "";
                  if(username == "123200074" && password == "edwin"){
                    setState(() {
                      isLoginSuccess = true;
                      isUsername = true;
                      isPassword = true;
                      text = "Login Berhasil";
                    });
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Homepage()
                        ));
                  }else if(username != "123200074" && password == "edwin"){
                    setState(() {
                      isLoginSuccess = false;
                      isUsername = false;
                      isPassword = true;
                      text = "Login Gagal, Username Salah";
                    });
                  }else if(username == "123200074" && password != "edwin"){
                    setState(() {
                      isLoginSuccess = false;
                      isUsername = true;
                      isPassword = false;
                      text = "Login Gagal, Password Salah";
                    });
                  }else{
                    setState(() {
                      isLoginSuccess = false;
                      isUsername = false;
                      isPassword = false;
                      text = "Login Gagal";
                    });
                  }
                  SnackBar snackBar = SnackBar(
                    content: Text(text),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, child: Text('Login'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(onPressed: (){
            },
                child: const Text('Forgot Password?',
                    style: TextStyle(color : Colors.grey))
            ),
          ],
        ),
      ),
    );
  }
}



