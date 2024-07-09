// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sample_pro/screens/card.dart';
import 'package:sample_pro/screens/newscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hi hello",
      theme: ThemeData(primaryColor: Colors.grey),
      home: const Home(),
      routes: {
        '/new': (context) => VideoScreen(),
        '/card': (context) => card(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 181, 216, 181),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "My App",
          style: TextStyle(
            color: Color.fromARGB(255, 21, 19, 19),
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          );
        }),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.settings),
              iconSize: 35,
            );
          }),
        ],
        backgroundColor: Color.fromARGB(255, 9, 122, 150),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "shanib",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "shanibt000@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/aa.jpg"),
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(
      //   backgroundColor: Colors.green[200],
      //   child:ListView(
      //     children: [
            
      //     ],
      //   )
        
        
        
       
        
        

        
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("images/human.avif"),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Hi Welcome ",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 28, 120, 128),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/new");
              },
              child: Text("click me"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 26, 119, 201),
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/card');
        },
        child: Icon(Icons.home),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
