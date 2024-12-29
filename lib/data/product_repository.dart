// 🎯 Dart imports:
import 'dart:developer';

// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// 🌎 Project imports:
import '/Services/FirestorePath.dart';
import '/Models/Product.dart';

class ProductRepository {

  Future<List<Product>> getProducts(int page) async {
    List<Product> _rtnList = [];
    await FirebaseFirestore.instance.doc('products/page1').get().then((value) {
      List _list = value.data()['products'];
      _list.forEach((element) {
        _rtnList.add(Product.fromData(element));
      });
    }).onError((error, stackTrace) {
      log(error);
    });
    return _rtnList;
  }

  Query getFavourites() {
    final String uid = FirebaseAuth.instance.currentUser.uid;
    return FirebaseFirestore.instance
        .collection('users/$uid/favouriteProducts')
        .orderBy('id');
  }

  Future<void> favouriteProduct(Product product) async {
    final String uid = FirebaseAuth.instance.currentUser.uid;
    FirebaseFirestore.instance
        .doc(FirestorePath.favouriteProduct(uid, product.id))
        .set(product.toJson())
        .then((value) {
      print('product with id ${product.id} added to firestore');
    }).onError((error, stackTrace) {
      log(error);
    });
  }

  static Future<void> setProducts() async {
    FirebaseFirestore.instance.doc('products/page1').set(page1).then((value) {
      print('updated');
    }).onError((error, stackTrace) {
      log(error);
    });
  }
}
