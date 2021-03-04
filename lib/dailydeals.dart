import 'package:flutter/material.dart';

class dailydeals extends StatelessWidget {
  const dailydeals({
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
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            dailydatacards(name: 'Tomato',price: '\u20B9 120',img:'assets/tomato.png',),
            SizedBox(width: 5,),
            dailydatacards(name: 'Ooty potato',price: '\u20B9 80',img:'assets/potato.png',),
            SizedBox(width: 5,),
            dailydatacards(name: 'Guava',price: '\u20B9 40',img:'assets/guava.png',),
         ],
        ),
      ),
    );
  }
}

class dailydatacards extends StatelessWidget {

  final name,price,img;
  dailydatacards({this.name,this.price,this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child:  Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3.5,
            height: MediaQuery.of(context).size.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill,),),
          ),
          SizedBox(height: 8,),

          Text(name, style: TextStyle(fontWeight: FontWeight.w400),),
          SizedBox(height: 2,),
          Text(price, style: TextStyle(fontWeight: FontWeight.w400,color: Colors.green),),
        ],
      ),
    );
  }
}