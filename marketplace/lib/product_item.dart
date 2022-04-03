import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final int pret;
  final String linkImg;

  ProductItem(
      this.id, this.title, this.pret, this.linkImg);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Wrap(
        alignment: WrapAlignment.center,
        

        children: [
          Image.network(linkImg),
          Text(title),
          Text('$pret'),
          FloatingActionButton(
            backgroundColor: Colors.cyan,
            onPressed: null,
          child: Center(child: Text('Add')),),

        ],
      ),
    );
  }
}