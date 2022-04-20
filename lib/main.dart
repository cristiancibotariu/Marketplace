import 'package:flutter/material.dart';
import 'package:marketplace/builder.dart';
import 'package:marketplace/marketplace.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marketplace"),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, // add custom icons also
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width * 70 / 100,
                height: MediaQuery.of(context).size.height * 90 / 100,
                child: BuilderCon()),
            Container(
                width: MediaQuery.of(context).size.width * 30 / 100,
                height: MediaQuery.of(context).size.height * 90 / 100,
                child: Marketplace())
          ],
        ),
      ),
    );
  }
}
