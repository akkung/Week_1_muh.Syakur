
import 'package:aplikasi_pertama/Login_register/login.dart';
import 'package:flutter/material.dart';

class BuatAkun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Buat akun'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: <Widget>[
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 5.0), //entah kenapa ini tidak berefek
                  ),
                  //focusedBorder: , bedanya apa ya dengan enableBorder
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 3.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 5.0), //entah kenapa ini tidak berefek
                  ),
                  //focusedBorder: , bedanya apa ya dengan enableBorder
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 3.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 25,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: BorderSide(color: Colors.red, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 3.0),
                    borderRadius:
                    BorderRadius.circular(18.0), //disini saya bingung
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: double.infinity,
              child: InkWell(
                child: RaisedButton( //ini kenapa ya?
                  elevation: 5.0,
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.white,
                  child: Text(
                    'BUAT AKUN',
                    style: TextStyle(
                      color: Color(0xFF527DAA),
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
            ),
          ]),
        )
    );
  }
}

