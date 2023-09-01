import 'package:flutter/material.dart';
import 'package:mancityfc/constants.dart';



abstract class Styles{

static const font= TextStyle(
   color: Colors.white,
   fontWeight: FontWeight.bold,
    fontSize: 45, fontFamily: 'Fjalla');

   static const kitStyle=TextStyle(
                fontFamily: 'Fjalla',
                color: Colors.white,
                fontSize:20); 
                static const standing=TextStyle(
                fontFamily: 'Fjalla',
                color: darkBlue,
                fontSize:15);

                static const teams=TextStyle(
                fontFamily: 'Fjalla',
                color: darkBlue,
                fontSize:20);
                static const playerNumber= TextStyle(
                      fontFamily: 'Fjalla',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color:  Colors.white
                  );
                  static const playerName= TextStyle(
                      fontFamily: 'Fjalla',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color:  Colors.white
                  );
}