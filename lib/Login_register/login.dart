import 'package:aplikasi_pertama/Login_register/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String username = "aku", password = "12345";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
        resizeToAvoidBottomInset: false,

      body: Container(
        padding: const EdgeInsets.all(40),

        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(height: 38,),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
                 child: Center(

                child: Icon(
                  Icons.person,
                  size: 75,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "We Are Disconected",
              style: TextStyle(fontSize: 25, color: Colors.green),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: TextFormField(
                  controller: usernameController,
                validator: (value) {

                  if (value.isEmpty) {
                    return 'tidak boleh kosong';
                  }
                  return null;
                },
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

                validator: (value) {
                  if (value.isEmpty) {
                    return 'tidak boleh kosong';
                  }
                  return null;
                },
                controller: passwordController,
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
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                //vagaimana supaya text lupa password bisa disebelah kanan kalau pake colummn
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  //Align(),
                  /* Text("Lupa password?", style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16,
                              ),),
                              SizedBox(width: 5,),*/
                  GestureDetector(
                    onTap: () {
                      print("gas ");
                    },
                    child: Text(
                      "Lupa password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              //padding: EdgeInsets.symmetric(vertical: 25.0),
              width: double.infinity,
              child: MaterialButton(
                elevation: 5.0,
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    username = usernameController.text;
                    password = passwordController.text;
                  });
                },

              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "OR",
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              "LOGIN WITH",
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Container(
              /* child: InkWell(
                onTap: () {
                  print("");
                },*/
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: InkWell(
                      onTap: () {
                        print("");
                      },

                      child: CircleAvatar(

                        backgroundColor: Colors.grey,
                        radius: 18,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              AssetImage("assets/images/googlelogo.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      child: InkWell(
                          onTap: () {
                            print("");
                          },
                          child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 14,
                              child: CircleAvatar(
                                radius: 24,
                                backgroundImage:
                                    AssetImage("assets/images/twitterlogo.jpg"),
                              ))))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: InkWell(
                  child: Text(
                    "buat akun disini",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuatAkun()));
                  }),
            ),
          Text (username),
        Text(password),

    ],
        ),
      ),
    );
  }
}
