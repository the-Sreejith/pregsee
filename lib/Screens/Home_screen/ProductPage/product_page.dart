// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_spinkit/flutter_spinkit.dart';

// 🌎 Project imports:
import '../../../Const/AppConst.dart';
import '../../../Widget/image_widget.dart';
import '/Models/Product.dart';
import '/Widget/error_widget.dart';
import '/data/product_repository.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ProductRepository _productRepository;

  @override
  void initState() {
    super.initState();
    _productRepository = ProductRepository();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _productRepository.getProducts(1),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List _productList = snapshot.data;
            return ListView.builder(
              itemCount: _productList.length,
              itemBuilder: (context, index) {
                return _ProductCard(_productList[index]);
              },
            );
          }
          if (snapshot.hasError) {
            return CustomErrorWidget();
          }
          return Center(
            child: const SpinKitThreeBounce(color: AppColors.primary),
          );
        },
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final Product product;
  _ProductCard(this.product);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/productDetails', arguments: product);
      },
      child: Container(
        padding: const EdgeInsets.all(24.0),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFE0E0E0), width: 2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: ImageWidget(
                    product.imgUrl,
                    height: 243,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${product.productName}\n',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: product.price,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(icon:Icon(Icons.favorite_border_rounded),onPressed: (){
                      ProductRepository().favouriteProduct(product);
                    },),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
