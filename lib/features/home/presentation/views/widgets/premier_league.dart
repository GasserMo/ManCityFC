import 'package:flutter/material.dart';
import 'package:mancityfc/core/styles.dart';
import 'package:mancityfc/features/table/presentation/views/premier_league_table_body.dart';

class PremierLeague extends StatelessWidget {
  const PremierLeague({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PremierLeagueTable()));
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.9,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: 
              AssetImage('assets/images/some/table.png')),
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.transparent.withOpacity(0.1)
                  ]),
              
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "2023/2024",
                        style: Styles.font.copyWith(fontSize: 30),
        
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, left: 17.0),
                      child: Image(
                        width:MediaQuery.of(context).size.width*0.1,
                        color: Colors.white,
                        image: AssetImage('assets/images/some/premierLeague.png'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "PREMIER LEAGUE TABLE",
                            style: Styles.font.copyWith(fontSize: 30),
        
                          ),
                        ),
                        Icon(
                          color: Colors.white,
                          size:50,
                          
                          Icons.arrow_right_alt)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
