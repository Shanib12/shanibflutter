// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 181, 216, 181),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "CARDS",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        body: ListView(
          children: [
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("Rahman"),
                    subtitle: Text("37 minutes ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/rahpro.jpg"),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("bilaathi time...."),
                  ),
                  Image.asset("images/rah.jpg"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("Irfan_jaango"),
                    subtitle: Text("37 minutes ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/irfpro.jpg"),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("njan sooper..."),
                  ),
                  Image.asset("images/irf.jpg"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("shanib"),
                    subtitle: Text("37 minutes ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/aa.jpg"),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("entha ore imaan..."),
                  ),
                  Image.asset("images/ss.jpg"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
