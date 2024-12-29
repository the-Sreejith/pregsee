class Product {
  final String id;
  final String productName;
  final String imgUrl;
  final String productUrl;
  final String price;
  final String description;

  Product({
    this.id,
    this.productName,
    this.productUrl,
    this.imgUrl,
    this.price,
    this.description,
  });

  Product.fromData(Map<String, dynamic> data)
      : id = data['id'],
        productName = data['productName'],
        productUrl = data['productUrl'],
        imgUrl = data['imgUrl'],
        price = data['price'],
        description = data['description'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['productName'] = this.productName;
    data['productUrl'] = this.productUrl;
    data['imgUrl'] = this.imgUrl;
    data['price'] = this.price;
    data['description'] = this.description;
    return data;
  }
}

const s = {
  "id": "p001",
  "productName": "Baby Wipes",
  "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
  "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
  "price": "₹150",
  "description":
      "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
};
const page1 = {
  "noOfItems": 10,
  "products": [
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
    {
      "id": "p001",
      "productName": "Baby Wipes",
      "productUrl":"https://www.amazon.in/Pampers-Baby-Gentle-Wipes-Aloe/dp/B08LFSHQCQ/ref=sr_1_6?dchild=1&keywords=babywipes&qid=1623163325&sr=8-6",
      "imgUrl": "https://unsplash.com/photos/BxvDij4p1SY/download?force=true",
      "price": "₹150",
      "description":
          "High quality baby wipes with lavender fragrance. No harmfull contents in the products. Made to use in sensitive skin",
    },
  ]
};
