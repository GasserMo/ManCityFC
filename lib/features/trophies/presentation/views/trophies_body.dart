

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mancityfc/constants.dart';
import 'package:mancityfc/features/trophies/presentation/views/widgets/trophy.dart';

class TrophiesBody extends StatelessWidget {
  const TrophiesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
            Colors.white,
            babyBlue.withOpacity(0.5),
            Colors.white,
            babyBlue.withOpacity(0.5),
          

          ]),
        ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0),
                    child: InkWell(
                      onTap: (){
                       Navigator.of(context).pop();
                      },
                      child:const FaIcon(FontAwesomeIcons.backspace,
                        color: darkBlue,),
                    ),
                  ),
                     Image(
                        height: MediaQuery.of(context).size.height*0.1,
                        width:MediaQuery.of(context).size.width*0.2,
                        image: AssetImage('assets/images/some/mancity.png')),
                  const Padding(
                    padding:  EdgeInsets.only(right:4.0),
                    child: 
                     Text('ManCity',
                    style: TextStyle(
                        color: darkBlue,
                        fontSize: 30,
                        fontFamily: 'Fjalla'
                    ),),
                    
                  ),
               
                      
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              SizedBox(height: 20,),
              Trophy(
                image: AssetImage('assets/images/trophy/premier.png'),
                titleName: '9X English League',
                years: '22/23, 21/22, 20/21, 18/19,\n17/18,13/14, 11/12, 67/68,\n36/37'
              ),
              SizedBox(height: 10,),
          
               Trophy(
                image: AssetImage('assets/images/trophy/uefasuper.png'),
                titleName: '1X Uefa Super Cup',
                years: '22/23'
              ),
              SizedBox(height: 10,),
              Trophy(
                  image: AssetImage('assets/images/trophy/championsLeague.png',),
                  titleName: '1X Uefa Champions League ',
                  years: '22/23'
              ),
              SizedBox(height: 10,),
              Trophy(
                  image: AssetImage('assets/images/trophy/facup.png'),
                  titleName: '6X Fa Cup',
                  years: '22/23,  18/19 ,  10/11 ,\n68/69 ,55/56 ,  33/34 ,\n1903/04'
              ),
              SizedBox(height: 10,),
              Trophy(
                  image: AssetImage('assets/images/trophy/carabao.png'),
                  titleName: '8X English Cup ',
                  years: '20/21 ,  19/20 ,  18/19 ,\n17/18 , 15/16 ,  13/14 ,  75/76,\n69/70'
              ),SizedBox(height: 10,),
              Trophy(
                  image: AssetImage('assets/images/trophy/community.png'),
                  titleName: '6X Community Shield',
                  years: '19/20 ,  18/19 ,  12/13 ,\n72/73 ,  68/69 ,  37/38'
              ),
              SizedBox(height: 10,),
              Trophy(
                  image: AssetImage('assets/images/trophy/uefacup.png'),
                  titleName: '1X Uefa Cup Winners Cup',
                  years: '19/20 ,  18/19 ,  12/13 ,\n72/73 ,  68/69 ,  37/38'
              ),              SizedBox(height: 10,),
          
            ],
          )
        ],
        ),
      ),
    ),
    ) ;
  }
}