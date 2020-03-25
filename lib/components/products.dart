import 'package:ecommerce/pages/product_details.dart';
import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var productList =[{
    "name":"Blazer",
    "picture":"images/products/blazer1.jpeg",
    "old_price":4200,
    "price":1850,

  },
  {
    "name":"Coat",
    "picture":"images/products/blazer2.jpeg",
    "old_price":1000,
    "price":850,

  },
  {
    "name":"Heel",
    "picture":"images/products/hills1.jpeg",
    "old_price":1500,
    "price":750,

  },
  {
    "name":"Shoe",
    "picture":"images/products/pants1.jpg",
    "old_price":1200,
    "price":450,

  },
   {
    "name":"Dress",
    "picture":"images/products/dress2.jpeg",
    "old_price":1500,
    "price":350,

  },
   {
    "name":"Jacket",
    "picture":"images/products/hills2.jpeg",
    "old_price":1900,
    "price":950,

  },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder( itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (BuildContext context, int index) {
      return SingleProduct(
        productName: productList[index]['name'],
        productImage: productList[index]['picture'],
        productOldPrice: productList[index]['old_price'],
        productPrice: productList[index]['price'],
      );
    },   
    );
  }
}
class SingleProduct extends StatelessWidget {
  final productName;
  final productImage;
  final productPrice;
  final productOldPrice;

  const SingleProduct({
    Key key, this.productName, this.productImage, this.productPrice, this.productOldPrice}) : 
    super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: productName, child: Material(
        child: InkWell(
          onTap: ()
           => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetail(
            productDetailName: productName,
            productDetailOldPrice: productOldPrice,
            productDetailPicture: productImage,
            productDetailPrice: productPrice,
          ))),
          child: GridTile(
            footer: Container(
              color:Colors.white70,
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(productName,style: TextStyle(fontWeight: FontWeight.bold,),),
                ),
                title: Text("Npr $productPrice", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w800),),
                subtitle: Text("Npr $productOldPrice", style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.lineThrough
                ),),
              ),
            ),
            child: Image.asset(productImage, fit: BoxFit.cover,),
        ),

      )),),
      
    );
  }
}