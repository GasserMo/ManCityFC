

import 'package:flutter/material.dart';
import 'package:mancityfc/constants.dart';

// ignore: must_be_immutable
class Trophy extends StatelessWidget {
     String titleName;
     AssetImage image;
     String years;
     Trophy({ required this.image, required this.titleName,
     required this.years});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14,right: 14),
      child: Container(
        height: MediaQuery.of(context).size.height*0.25,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
            color:darkBlue.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 20,

              // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [
            Colors.transparent,
              Colors.white.withOpacity(0.8),
            ],
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(titleName,
                style: const TextStyle(
                    color:darkBlue,
                    fontSize: 22,
                    fontFamily: 'Fjalla'
                ),),
            ),
         const   Divider(height: 6,
              thickness:1,
              color:darkBlue ,),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: MediaQuery.of(context).size.width*0.3,
                  height: MediaQuery.of(context).size.height*0.18,
                  image:image,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text( years,
                        style:const TextStyle(
                            color:darkBlue,
                            fontSize: 20,
                            fontFamily: 'Fjalla'
                        ),),
                    ),],
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }
}
