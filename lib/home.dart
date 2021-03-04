import 'package:flutter/material.dart';
import 'appbody.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String _chosenValue;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [


          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.notifications),
          SizedBox(width: 20,),
        ],
title: Row(children: [
  DropdownButton<String>(
    hint: Text("Select place",style: TextStyle(color: Colors.white),),

    value: _chosenValue,
    underline: Container(

    ),
    icon: Icon(Icons.keyboard_arrow_down,),
    iconSize: 30.0, // can be changed, default: 24.0
    iconEnabledColor: Colors.white,
    items: <String>['Bommanahalli', 'Jp nagar', 'Whitefeild',]
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value,style: TextStyle(color: Colors.black),),
      );
    }).toList(),
    onChanged: (String value) {
      setState(() {
        _chosenValue = value;
      });
    },
  ),

],),
//
//          actions: <Widget>[
//
//
//
//
//      IconButton(
//      icon: Icon(
//        Icons.search,
//        color: Colors.white,
//      ),
//
//    ),
//      IconButton(
//        icon: Icon(
//          Icons.notifications,
//          color: Colors.white,
//        ),
//
//      )
//              ]
),
      body: Appbody(),

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,

        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,


        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop,), title: Text("Shop")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Explore")),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text("Cart")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), title: Text("Favourite")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Account")),

        ],
      ),
    );
  }
}

