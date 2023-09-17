import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading:Icon(Icons.key),
              title:Text('Login'),
              backgroundColor: Colors.green[800],
              foregroundColor: Colors.white,
            ),

            body:Column(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),

                  Image.asset(
                    'assets/orglogin.jpg', width: 120,
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  Container (
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Text('Hi Welcome To App',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.green[800])),
                  ),

                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide(width: 3, color: Colors.green)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        icon: Icon(Icons.person),
                        labelText: 'Email',
                        hintText: 'Input Email',
                        floatingLabelStyle: TextStyle(
                          color: Colors.green[800],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide(width: 3, color:Colors.green)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        icon: Icon(Icons.password),
                        labelText: 'Password',
                        hintText: 'Input Password',
                        floatingLabelStyle: TextStyle(
                          color: Colors.green[800],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ElevatedButton(
                        child: Text('Log in'),
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[800], // Background color
                            onPrimary: Colors.white,
                            shape: StadiumBorder())),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Text('Forgot Password?',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.green[800])),
                  ),

                ]
            )
        )
    );
  }
}