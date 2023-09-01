import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mancityfc/features/trophies/presentation/views/trophies_body.dart';

class Trophies extends StatelessWidget {
  const Trophies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10),
      child: GestureDetector(
        onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrophiesBody()));
        },
        child: Container(
           height: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                      Colors.transparent.withOpacity(0.1)
                  ])),
          child:const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(2.0),
                child: FaIcon(
                    size: 30, color: Color(0XFF001838), FontAwesomeIcons.trophy),
              ),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'OUR TROPHIES',
                      style: TextStyle(
                          fontFamily: 'Fjalla',
                          color: Color(0XFF001838),
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 8.0),
                child: Text(
                  'Read about all our Achievements,',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 8.0),
                child: Text(
                  'Record and History',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
