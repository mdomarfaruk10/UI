import 'package:flutter/material.dart';
import 'package:webcoderit/utils/color.dart';
class RectangleWidget extends StatelessWidget {
  const RectangleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118.0,
      width: 314,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(
             begin: Alignment.topRight,
             end: Alignment.bottomRight,
            colors: [
              AppColors.linearGradientColor_4.withOpacity(0.4),
              AppColors.linearGradientColor_3.withOpacity(0.7),
              AppColors.linearGradientColor_4.withOpacity(0.8),
            ],
          )
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

           Expanded(child:  Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("Advanced Digital Marketing&Shopify Dropshipping",maxLines: 2, softWrap: true,overflow:TextOverflow.ellipsis,style: TextStyle(fontSize: 17,color: Colors.white),),
               Row(
                 children: [
                   Icon(Icons.star,color: Colors.orange,),
                   Expanded(child: Text("5.0(1000 Reviews)",style: TextStyle(color: Colors.white,fontSize: 14),)),
                 ],
               ),
               Expanded(child: Container(
                 alignment: Alignment.center,
                 height: 10,
                 width: 100,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                     border: Border.all(color: Colors.white)


                 ),
                 child: Text("View details",style: TextStyle(color: Colors.white),),
               ))
             ],
           ),),
            Expanded(child: Column(
              children: [
                Container(height: 70,width: 140,color: Colors.red,alignment: Alignment.center,child: Text("img",style: TextStyle(color: Colors.white),),),
                SizedBox(height: 7,),
                Expanded(child: Text("Course Fee  7,500.00 BDT",maxLines: 1, softWrap: true,overflow:TextOverflow.ellipsis,style: TextStyle(color: Colors.white),))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
