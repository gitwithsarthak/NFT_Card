// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        routes: {'/': (context) => MyCard()},
      ),
    );

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}
//const MyCard({Key? key}) : super(key: key);

int level = 0;

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text('NFT Card'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade700,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.quora_outlined),
                      title: Text('Gallary'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.numbers),
                      title: Text('Genrate ID'),
                      onLongPress: () {
                        setState(() {
                          level += 1;
                        });
                      },
                    ),
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      // onPressed: () {
      //   setState(() {
      //     level += 1;
      //   });
      // },
      // backgroundColor: Colors.grey.shade700,
      // child: Icon(Icons.add),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                  child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/nft2.png',
                ),
                radius: 40.0,
              )),
              Divider(
                height: 60.0,
                color: Colors.grey.shade800,
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Jhon Doe',
                style: TextStyle(
                    color: Color.fromARGB(255, 69, 168, 214),
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text(
                'Devloper',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Flutter Devloper',
                style: TextStyle(
                    color: Color.fromARGB(255, 69, 168, 214),
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  Text(
                    'jhon@flutter.com',
                    style: TextStyle(
                        color: Color.fromARGB(255, 69, 168, 214),
                        letterSpacing: 3.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Icon(
                    Icons.quora,
                    color: Colors.white,
                  ),
                  Text(
                    'Quotes Quora',
                    style: TextStyle(
                        color: Color.fromARGB(255, 69, 168, 214),
                        letterSpacing: 3.0,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 250.0),
              Row(
                children: <Widget>[
                  Text('NFT ID. $level',
                      style: TextStyle(
                          color: Colors.amber[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          letterSpacing: 2.0)),
                ],
              )
            ]),
      ),
    );
  }
}
