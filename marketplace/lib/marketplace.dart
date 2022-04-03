import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marketplace/dummy_products.dart';
import 'package:marketplace/product_item.dart';


class Marketplace extends StatefulWidget {
  Marketplace();

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 30 / 100,
        height: MediaQuery.of(context).size.height * 90 / 100,
        child: Scaffold(
          body: Center(
            child: ListView(
              
              children: DUMMY_PRODUCTS.map((proData) => ProductItem(proData.id, proData.title, proData.pret, proData.linkImg)).toList(),
            )
          // Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       const Text(
          //         'You have pushed the button this many times:',
          //       ),
          //       Text(
          //         '$_counter',
          //         style: Theme.of(context).textTheme.headline4,
          //       ),
          //     ],
          //   ),
          // ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _incrementCounter,
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          ),
        ));
  }
}
