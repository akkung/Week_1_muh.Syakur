import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aplikasi pertama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        //width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
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
              child: Row( //vagaimana supaya text lupa password bisa disebelah kanan kalau pake colummn
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
                          color: Colors.black,
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
                onPressed: () => print('ok gan'),
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: Text(
                  'LOGIN',
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
            SizedBox(
              height: 15,
            ),
            Text(
              "OR LOGIN WITH",
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
                      radius: 35,
                      child: CircleAvatar(
                        
                        radius: 33,
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
                        radius: 35,
                        child: CircleAvatar(
                          radius: 33,
                          backgroundImage:
                              AssetImage("assets/images/twitterlogo.jpg"),
                        ))
                          )
                    )
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
            )
          ],
        ),
      ),
    );
  }
}

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
                
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  
                 Navigator.pop(context, MaterialPageRoute(builder: (context) => Login()));

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
        ));

    backButton() {
      InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
              ),
              Text('Back',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
            ],
          ),
        ),
      );
    }
  }
}


/*1. bagaimana supaya ketika logo google atau twitter ditekan efek inkwelnya mengikuti bentuk logo buka segi empat
  2. kenapa diatas keyboard di halaman login ada warna kuning?*/