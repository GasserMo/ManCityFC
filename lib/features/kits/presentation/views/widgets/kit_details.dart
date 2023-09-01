import 'package:flutter/material.dart';
import 'package:mancityfc/constants.dart';
import 'package:mancityfc/core/styles.dart';

class KitDetails extends StatelessWidget {
  const KitDetails({
    super.key,
    required this.name,
    required this.price,
    required this.season, required this.kitImage1, required this.kitImage2, required this.kitImage3,  
  });
  final String name;
  final String price;
  final String season;
  final AssetImage kitImage1;
    final AssetImage kitImage2;
  final AssetImage kitImage3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: Styles.kitStyle.copyWith(color: darkBlue)),
          Text(season, style: Styles.kitStyle.copyWith(color: darkBlue)),
          Text(price, style: Styles.kitStyle.copyWith(color: darkBlue)),
         const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            height: MediaQuery.of(context).size.height * 0.2,
             width: double.infinity,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Image(image: kitImage1,
               width: MediaQuery.of(context).size.width * 0.3,
               height: MediaQuery.of(context).size.height * 0.3,),
                Image(image: kitImage2,
               width: MediaQuery.of(context).size.width * 0.3,
               height: MediaQuery.of(context).size.height * 0.3,),
                Image(image: kitImage3,
               width: MediaQuery.of(context).size.width * 0.3,
               height: MediaQuery.of(context).size.height * 0.3,),
              ],
            ),
          ),
         const SizedBox(
            height: 10,
          ),
          
        ],
      ),
    );
  }
}

//class ImageKit extends StatelessWidget {
 // const ImageKit({
 //   super.key,
   // required this.assetImage,
 // });
  //final AssetImage assetImage;
 // @override
 // Widget build(BuildContext context) {
 //   return Image(
   //  height: MediaQuery.of(context).size.height*0.3,
   //   width: MediaQuery.of(context).size.width*0.3,
    //  image: assetImage
  //  );
 // }
//}
