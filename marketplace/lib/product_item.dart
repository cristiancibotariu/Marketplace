import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final int pret;
  final String linkImg;

  ProductItem(this.id, this.title, this.pret, this.linkImg);

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width * 30 / 100 * 15 / 100;
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: x,
              height: x,
              child: Image.network(linkImg),
            ),
          ),
          Expanded(
            child: Text(
              title,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Center(child: Text((() {
              if (pret != 0) {
                return "\$$pret";
              }

              return "ERR";
            })())),
          ),
          Expanded(
              child: Center(
            child: FloatingActionButton(
              onPressed: null,
              child: Center(child: Text('Add')),
            ),
          ))
        ],
      ),
    );
  }
}
