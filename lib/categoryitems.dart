import 'package:flutter/material.dart';

class categoryItems extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        childAspectRatio: (100 / 120),
        children: [
          categoryCardData(name: 'Fresh Fruits',color: Colors.black87,img:'assets/veg.png',),
          categoryCardData(name: 'Fresh Vegetables',color: Colors.lightBlue[200],img:'assets/fruits.png',),
          categoryCardData(name: 'Seasional',color: Colors.grey[300],img:'assets/seasonal.png',),
          categoryCardData(name: 'Dairy',color: Colors.orange[200],img:'assets/dairys.png',),
          categoryCardData(name: 'Backery',color: Colors.pink[100],img:'assets/backery.png',),
          categoryCardData(name: 'Grocery',color: Colors.lightGreen[200],img:'assets/crocery.png',),
          categoryCardData(name: 'Pooja needs',color: Colors.pink[200],img:'assets/pooja.png',),
          categoryCardData(name: 'Home needs',color: Colors.grey[300],img:'assets/seasonal.png',),
          categoryCardData(name: 'Home needs',color: Colors.orange[200],img:'assets/pooja.png',),

        ]);
  }
}

class categoryCardData extends StatelessWidget {
  final name,img,color;

  categoryCardData({this.name,this.img,this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: color,
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(height: 8,),
          Text(name, style: TextStyle(fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }
}
