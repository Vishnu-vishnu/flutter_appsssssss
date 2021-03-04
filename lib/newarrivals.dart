import 'package:flutter/material.dart';

class newArrivals extends StatelessWidget {
  const newArrivals({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(

          children: [

            newarrivalscard(name: 'Grapes',price: '\u20B9 50',img:'assets/grapes.png',),
            SizedBox(width: 5,),
            newarrivalscard(name: 'Guava',price: '\u20B9 35',img:'assets/guava.png',),
            SizedBox(width: 5,),
            newarrivalscard(name: 'Orange',price: '\u20B9 90',img:'assets/orange.png',),
          ],
        ),
      ),
    );
  }
}

class newarrivalscard extends StatelessWidget {
  final name,price,img;
  newarrivalscard({this.name,this.price,this.img});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(img),),),
          ),
          SizedBox(height: 8,),
          Text(name, style: TextStyle(fontWeight: FontWeight.w400),),


          SizedBox(height: 2,),
          Text(price,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.green),),

        ],
      ),
    );
  }
}
