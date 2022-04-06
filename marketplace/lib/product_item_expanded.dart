import 'package:flutter/material.dart';

class ProductItemExpanded extends StatelessWidget {
  final String id;
  final String title;
  final int pret;
  final String linkImg;

  ProductItemExpanded(this.id, this.title, this.pret, this.linkImg);

  @override
  Widget build(BuildContext context) {
    // double x = MediaQuery.of(context).size.width * 30 / 100 * 15 / 100;
    double y = MediaQuery.of(context).size.height * 80 / 100;
    return AlertDialog(
        contentPadding: EdgeInsets.all(8),
        content: Center(
            child: Container(
                width: y,
                height: y,
                child: Expanded(
                    child: ListView(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        softWrap: true,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.height * 80 / 100 * 80 / 100 ,
                        height: MediaQuery.of(context).size.height * 80 / 100 * 80 / 100 ,
                        child: Image.network(linkImg),
                      ),
                    ),
                    const Expanded(child: Text('descriere')),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Text(
                              '\$$pret',
                              textAlign: TextAlign.center,
                            )),
                            Expanded(
                                child: FloatingActionButton(
                                    onPressed: null,
                                    child: Icon(
                                      Icons.favorite,
                                    ))),
                            Expanded(
                                child: FloatingActionButton(
                                    onPressed: null, child: Icon(Icons.add))),
                          ]),
                    ))
                  ],
                )))));
    // TextButton(
    //   onPressed: null,
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Expanded(
    //         child: Container(
    //           width: x,
    //           height: x,
    //           child: Image.network(linkImg),
    //         ),
    //       ),
    //       Expanded(
    //         child: Text(
    //           title,
    //           softWrap: true,
    //           maxLines: 2,
    //           overflow: TextOverflow.ellipsis,
    //         ),
    //       ),
    //       Expanded(
    //         child: Center(child: Text((() {
    //           if (pret != 0) {
    //             return "\$$pret";
    //           }

    //           return "ERR";
    //         })())),
    //       ),
    //       const Expanded(
    //           child: Center(
    //         child: IconButton(
    //           onPressed: null,
    //           icon: Icon(Icons.favorite),
    //           color: Colors.red,
    //         ),
    //       ))
    //     ],
    //   ),
    // ));
  }
}
