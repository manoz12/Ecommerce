import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final productDetailName;
  final productDetailPrice;
  final productDetailOldPrice;
  final productDetailPicture;

  const ProductDetail({Key key, this.productDetailName, this.productDetailPrice, this.productDetailOldPrice, this.productDetailPicture}) : super(key: key);
  
  @override
  _ProductDetailState createState() => _ProductDetailState();
  
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0.1,
        title: Text("ShopNow",style: TextStyle(color:Colors.white),),
        actions: <Widget>[IconButton(
          icon: Icon(Icons.search,color: Colors.white,), 
          onPressed: (){}),
          IconButton(
          icon: Icon(Icons.shopping_cart,color: Colors.white,), 
          onPressed: (){}),
          
          ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
                        child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailPicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.productDetailName,
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                  title: Row(children: <Widget>[
                    Expanded(child: Text("Npr ${widget.productDetailOldPrice}",style: TextStyle(
                      color: Colors.grey,decoration: TextDecoration.lineThrough
                    ),)),
                    Expanded(child: Text("Npr ${widget.productDetailPrice}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),))
                  ],),
                ),
              ),
            ),
            
          ),
          Row(
           
            children: <Widget>[
              
              Expanded(
                child: MaterialButton(onPressed: (){},
                color:Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(children: <Widget>[
                  Expanded(child: Text("Size")),
                  Expanded(child: Icon(Icons.arrow_drop_down))
                ],),)
                ),
                Expanded(
                child: MaterialButton(onPressed: (){},
                color:Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(children: <Widget>[
                  Expanded(child: Text("Color")),
                  Expanded(child: Icon(Icons.arrow_drop_down))
                ],),)
                ),
                Expanded(
                child: MaterialButton(onPressed: (){},
                color:Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(children: <Widget>[
                  Expanded(child: Text("Qty")),
                  Expanded(child: Icon(Icons.arrow_drop_down))
                ],),)
                ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: MaterialButton(onPressed: (){},
              color: Colors.red,
              textColor: Colors.white,
              child: Text("Buy now"),)),
              IconButton(icon: Icon(Icons.add_shopping_cart, color:Colors.red),
               onPressed: (){}),
               IconButton(icon: Icon(Icons.favorite_border,
               color:Colors.red), onPressed: null)
            ],
          )
        ],
      ),

    );
      
  
  }
}