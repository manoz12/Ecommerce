import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/cats/shirt.png',
            imageCaption: 'shirt',
          ),
          Category(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'dress',
          ),
           Category(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'formal',
          ),
             Category(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'informal',
          ),
          
           Category(
            imageLocation: 'images/cats/jean.png',
            imageCaption: 'jeans',
          ),
          Category(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'shoes',
          ),
          Category(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'accessories',
          ),
          
        
        ],
      ),
      
    );
  }
}
class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
 Category({this.imageLocation, this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap:(){},
        child:Container(
          width: 100.0, 
          child: ListTile(
            title:Image.asset(imageLocation,
            width: MediaQuery.of(context).size.width,
           ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(imageCaption, style: TextStyle(fontSize: 12.0),)),
            ),
          ),        ),
      ),
      
    );
  }
}