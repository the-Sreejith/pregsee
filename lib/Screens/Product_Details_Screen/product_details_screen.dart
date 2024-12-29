// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:pregsee/data/product_repository.dart';

// 📦 Package imports:
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
import '../../Const/AppConst.dart';
import '../../Widget/image_widget.dart';
import '/Models/Product.dart';

const TextStyle productTitle =
    TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black);

const TextStyle productCardTitle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black);
const TextStyle productDesc = TextStyle(
  fontSize: 14,
  color: Colors.black,
);
const TextStyle sectionHeader =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
const String dummy =
    'This is long description of the product you are lokking at. Please consider this will be really long in the text box and might not fit in the given constraints.';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen(this.product, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PregSee Store'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageWidget(
                product.imgUrl,
                height: 220,
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '${product.productName}\n\n', style: productTitle),
                  TextSpan(text: product.description, style: productDesc),
                ])),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Text(
                  'Similar Products',
                  style: sectionHeader,
                ),
              ),
              Container(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 200,
                  itemBuilder: (conntext, index) {
                    return _SimilarProductCard();
                  },
                ),
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _ActionButtons(product));
  }
}

class _SimilarProductCard extends StatelessWidget {
  const _SimilarProductCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: ImageWidget(
              'https://unsplash.com/photos/BxvDij4p1SY/download?force=true',
              height: 130,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 8,
              left: 4,
            ),
            child: Text(
              'Baby Wipes',
              maxLines: 1,
              style: productCardTitle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

const TextStyle goToAmazon =
    TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700);

class _ActionButtons extends StatelessWidget {
  final Product product;
  const _ActionButtons(this.product,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(56, 52),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: AppColors.primary, width: 2)),
            ),
            onPressed: () {
              ProductRepository().favouriteProduct(product);
              print('fav product pressed');
            },
            child:
                Icon(Icons.favorite_border_rounded, color: AppColors.primary),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(236, 52),
              primary: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: () async {
              final String url = product.productUrl;
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                print('Could not launch $url');
              }
            },
            child: Text(
              'Go to Amazon',
              style: goToAmazon,
            ),
          ),
        ],
      ),
    );
  }
}
