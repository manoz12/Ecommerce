import 'package:flutter/material.dart';
class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black87
            ),
            accountName: Text("Manoz Mhrzn"), 
          accountEmail: Text("manoz@gmail.com"),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(backgroundColor: Colors.grey,
              child:Icon(Icons.person,size: 40.0,) ,)
          ),),
          InkWell(
            onTap: (){},
                      child: ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home, color: Colors.teal,),
            ),
          ),
              InkWell(
            onTap: (){},
                      child: ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.person, color:Colors.teal),
            ),
          ),
             InkWell(
            onTap: (){},
                      child: ListTile(
              title: Text("My Order"),
              leading: Icon(Icons.shopping_basket, color: Colors.teal,),
            ),
          ),
              InkWell(
            onTap: (){},
                      child: ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.dashboard,color: Colors.teal,),
            ),
          ),
              InkWell(
            onTap: (){},
                      child: ListTile(
              title: Text("Favorite"),
              leading: Icon(Icons.favorite, color:Colors.red),
            ),
          ),
          Divider(color: Colors.black,),
              InkWell(
            onTap: (){},
                      child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings, color: Colors.blue,),
            ),
          ),
              InkWell(
            onTap: (){},
                      child: ListTile(
              title: Text("About"),
              leading: Icon(Icons.help,color: Colors.green,),
            ),
          ),
      
          
        ],
      ),

      
    );
  }
}