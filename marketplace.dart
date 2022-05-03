import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:homepage/dummy_products.dart';
import 'package:homepage/product_item.dart';

class Marketplace extends StatefulWidget {
  Marketplace();

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Column(children: [
        Container(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: null,
                  child: Text('Marketplace'),
                  style: ButtonStyle(elevation: MaterialStateProperty.all(1))),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    )
                      
                  ),
              
              TextButton(
                  onPressed: null,
                  child: Text('Schematics'),
                  style: ButtonStyle(elevation: MaterialStateProperty.all(1))),
                  
            ],
          ),
          ListTile(
              title: TextField(
                controller: TextEditingController(text: ''),
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: 'Search',
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new IconButton(
                      onPressed: null, icon: Icon(Icons.search_outlined))
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: null,
                  child: Text('Filters'),
                  style: ButtonStyle(elevation: MaterialStateProperty.all(1))),
              TextButton(
                  onPressed: null,
                  child: Text('Wishlist'),
                  style: ButtonStyle(elevation: MaterialStateProperty.all(1))),
            ],
          ),
        ])),
        Expanded(
            child: ListView(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                children: DUMMY_PRODUCTS
                    .map((proData) => ProductItem(proData.id, proData.title,
                        proData.pret, proData.linkImg))
                    .toList()))
      ]),
    ));
  }
}

/*
child: ListView.builder(
  itemCount: 5,
  itemBuilder: (BuildContext context,int index){
          return ListTile(
            leading: Icon(Icons.list),
            trailing: Text("GFG",
                           style: TextStyle(
                             color: Colors.green,fontSize: 15),),
            title:Text("List item $index")
            );
        }
)

*/