import 'package:flutter/material.dart';

import '../../../features/squad/presentation/views/view models/player.dart';



class Players with ChangeNotifier{
 List<Player> _players=[
    Player(
      image: AssetImage('assets/images/Players/ederson.webp'),
      name: 'Ederson'
         , number: '31',
      nationality: AssetImage('assets/images/Nationalities/brazil2.png'),
      dateOfBirth: '8/17/1993 (29)',
      position: 'Goalkeeper',
      height: 188,
    ),
    Player(
      image: AssetImage('assets/images/Players/ortega.webp'),
      name: 'Stefan Ortega'
      , number: '18'
      , nationality: AssetImage('assets/images/Nationalities/germany.jpg'),
      dateOfBirth: ' 11/6/1992 (30)',
      position: 'Goalkeeper',
      height:184 ,
    ),
    Player(
      image: AssetImage('assets/images/Players/zack.webp'),
      name: 'Zack Steffen'
      , number: '13'
      , nationality: AssetImage('assets/images/Nationalities/america.png'),
      dateOfBirth: ' 4/2/1995 (28)  ',
      position: 'Goalkeeper',
      height: 187,
    ),  Player(
  image: AssetImage('assets/images/Players/scott.webp'),
  name: 'Scott Carson'
  , number: '33'
  , nationality: AssetImage('assets/images/Nationalities/england.png'),
      dateOfBirth: ' 9/3/1985 (37)  ',
      position: 'Goalkeeper',
      height: 183,
    ),  Player(
      image: AssetImage('assets/images/Players/rubenDias.webp'),
      name: 'Rúben Dias'
      , number: '3'
      , nationality: AssetImage('assets/images/Nationalities/portugal.png'),
      dateOfBirth: ' 5/14/1997 (26)',
      position: 'Defender',
      height: 188,
    ),
    Player(
      image: AssetImage('assets/images/Players/johnStones.webp'),
      name: 'John Stones'
      , number: '5'
      , nationality: AssetImage('assets/images/Nationalities/england.png'),
      dateOfBirth: '5/28/1994 (29)',
      position: 'Defender',
      height: 188,
    ),
    Player(
      image: AssetImage('assets/images/Players/manuelAkanji.webp'),
      name: 'Manuel Akanji'
      , number: '25'
      , nationality: AssetImage('assets/images/Nationalities/switz.png'),
      dateOfBirth: ' 7/19/1995 (27)',
      position: 'Defender',
      height: 188,
    ),  Player(
      image: AssetImage('assets/images/Players/aymericLaporte.webp'),
      name: 'Aymeric Laporte'
      , number: '14'
      , nationality: AssetImage('assets/images/Nationalities/spain.png'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height: 189,
    ),  Player(
      image: AssetImage('assets/images/Players/kyleWalker.webp'),
      name: 'Kyle Walker'
      , number: '2'
      , nationality: AssetImage('assets/images/Nationalities/england.png'),
      dateOfBirth: ' 5/28/1990 (33)',
      position: 'Defender',
      height: 183,
    ),  Player(
      image: AssetImage('assets/images/Players/nathanAke.webp'),
      name: 'Nathan Aké'
      , number: '6'
      , nationality: AssetImage('assets/images/Nationalities/dutch.png'),
      dateOfBirth: '  2/18/1995 (28)',
      position: 'Defender',
      height:180 ,
    ),  Player(
      image: AssetImage('assets/images/Players/sergiogomez.webp'),
      name: 'Sergio Gómez'
      , number: '21'
      , nationality: AssetImage('assets/images/Nationalities/spain.png'),
      dateOfBirth: ' 9/4/2000 (22)',
      position: 'Defender',
      height: 171,
    ),
   Player(
     image: AssetImage('assets/images/Players/ricoLewis.webp'),
     name: 'Rico Lewis'
     , number: '7'
     , nationality: AssetImage('assets/images/Nationalities/england.png'),
      dateOfBirth: ' 11/21/2004 (18)',
      position: 'Defender',
      height:169 ,
    ),
    
    Player(
      image: AssetImage('assets/images/Players/bernardoSilva.webp'),
      name: 'Bernardo Silva'
      , number: '20'
      , nationality: AssetImage('assets/images/Nationalities/portugal.png'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height:182 ,
    ),
    Player(
      image: AssetImage('assets/images/Players/jackGrealish.webp'),
      name: 'Jack Grealish'
      , number: '10'
      , nationality: AssetImage('assets/images/Nationalities/england.png'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height:182 ,
    ),
    Player(
      image: AssetImage('assets/images/Players/kalvinphillips.webp'),
      name: 'Kalvin Phillips'
      , number: '4'
      , nationality: AssetImage('assets/images/Nationalities/england.png'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height:182 ,
    ),
    Player(image: AssetImage('assets/images/Players/Rodri.webp'),
  name: 'Rodri'
  , number: '16'
  , nationality: AssetImage('assets/images/Nationalities/spain.png'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height:182 ,
    ),
    Player(image: AssetImage('assets/images/Players/colePalmer.webp'),
      name: 'Cole Palmer'
      , number: '80'
      , nationality: AssetImage('assets/images/Nationalities/england.png'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height:182 ,
    ),
    Player(image: AssetImage('assets/images/Players/kevindebruyne.webp'),
      name: 'Kevin De Bruyne'
      , number: '31'
      , nationality: AssetImage('assets/images/Nationalities/belgium.png'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height:182 ,
    ),
    Player(image: AssetImage('assets/images/Players/philFoden.webp'),
      name: 'Phil Foden'
      , number: '47'
      , nationality: AssetImage('assets/images/Nationalities/england.png'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height:182 ,
    ),
  Player(image: AssetImage('assets/images/Players/erlingHaaland.webp'),
  name: 'Erling Haaland'
  , number: '9'
  , nationality: AssetImage('assets/images/Nationalities/norway.webp'),
      dateOfBirth: ' 5/27/1994 (29)',
      position: 'Defender',
      height:182 ,
    ),
    
    Player(image: AssetImage('assets/images/Players/julianAlvarez.webp'),
  name: 'Julián Álvarez'
  , number: '26'
  , nationality: AssetImage('assets/images/Nationalities/argentin.png'),
  dateOfBirth: ' 5/27/1994 (29)',
  position: 'Defender',
  height:182 ,
  ),
  ];

  List<Player> get players{
    return [..._players];
  }

 
}