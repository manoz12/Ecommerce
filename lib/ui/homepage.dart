import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/components/drawer_list.dart';
import 'package:ecommerce/components/horizontal_list.dart';
import 'package:ecommerce/components/products.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      
    drawer:
     DrawerList(),
     body:ListView(
       children: <Widget>[
         imageCarousel,
         //padding widget
         Padding(padding: const EdgeInsets.all(8.0),
         child: Text("Categories",style: TextStyle(fontWeight: FontWeight.w500),),),
         //horizontal list
         HorizontalList(),
          Padding(padding: const EdgeInsets.all(20.0),
         child: Text("Recent Products",style: TextStyle(fontWeight: FontWeight.w500),),),
         //Grid view
         Container(
           height: 320,
           child: Products(),
         )


       ],
     )
      
    );
  }
   Widget imageCarousel = Container(
    height: 210.0,
    child: Carousel(
    boxFit: BoxFit.cover,
    images: [AssetImage('images/c3.jpg'),
    AssetImage('images/c2.jpg'),
    AssetImage('images/c3.jpg'),
    AssetImage('images/c3.jpg')],
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
    dotSize: 4.0,
    indicatorBgPadding: 2.0,
  
    ),

  );
}