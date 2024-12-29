import 'package:flutter/material.dart';
// import 'package:paginate_firestore/paginate_firestore.dart';
import 'package:pregsee/Models/Product.dart';
import 'package:pregsee/data/product_repository.dart';

class FavouriteProductListingScreen extends StatefulWidget {
  const FavouriteProductListingScreen({Key key}) : super(key: key);

  @override
  _FavouriteProductListingScreenState createState() =>
      _FavouriteProductListingScreenState();
}

class _FavouriteProductListingScreenState
    extends State<FavouriteProductListingScreen> {
  ProductRepository productReop = ProductRepository();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PaginateFirestore(
        itemBuilder: (index, context, documentSnapshot) {
          final data = documentSnapshot.data();
          Product product = Product.fromData(data);
          return ListTile(
            title: Text(product.productName),
          );
        },
        query: productReop.getFavourites(),
        itemBuilderType: PaginateBuilderType.listView,
      ),
    );
  }
}
