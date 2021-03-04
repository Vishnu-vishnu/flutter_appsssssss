import 'package:flutter/material.dart';
import 'dailydeals.dart';
import 'categoryitems.dart';
import 'newarrivals.dart';
class Appbody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: DecorationImage(image: AssetImage('assets/banner1.jpg'),
                    fit: BoxFit.fill),),
              ),
          ),

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Text('Daily deals', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, letterSpacing: 1),),
          ),


          dailydeals(),

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Text('New arrivals', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, letterSpacing: 1),),
          ),

          newArrivals(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                  image: DecorationImage(image: AssetImage('assets/banner2.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories', style: TextStyle(
                        fontSize: 17, letterSpacing: 0,
                        fontWeight: FontWeight.w600)),
                Text('view all', style: TextStyle(fontSize: 14, letterSpacing: 0,fontWeight: FontWeight.w600, color: Colors.blue)),
              ],),
          ),


          categoryItems(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                  image: DecorationImage(image: AssetImage('assets/banner1.jpg'), fit: BoxFit.fill)
              ),
            ),
          ),

        ],
      ),
    );
  }
}

