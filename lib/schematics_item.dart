import 'package:flutter/material.dart';
import 'package:homepage/schematics_item_expanded.dart';

class SchematicItem extends StatelessWidget {
  final String id;
  final String title;
  final String linkImg;

  SchematicItem(this.id, this.title, this.linkImg);

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width * 30 / 100 * 15 / 100;
    return Container(
        padding: const EdgeInsets.all(8),
        child: TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SchematicItemExpanded(
                      this.id, this.title, this.linkImg);
                });
          },
          style:
              TextButton.styleFrom(textStyle: TextStyle(color: Colors.black)),
          // onPressed: () => ProductItemExpanded(this.id, this.title, this.pret, this.linkImg),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
        ));
  }
}
