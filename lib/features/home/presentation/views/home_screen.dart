import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mancityfc/constants.dart';
import 'package:mancityfc/core/widgets/bottom.dart';
import 'package:mancityfc/features/home/presentation/views/widgets/fixtures.dart';
import 'package:mancityfc/features/home/presentation/views/widgets/kits.dart';
import 'package:mancityfc/features/home/presentation/views/widgets/premier_league.dart';
import 'package:mancityfc/features/home/presentation/views/widgets/squad.dart';
import 'package:mancityfc/features/home/presentation/views/widgets/trophies.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: 
          AssetImage('assets/images/some/back3.jpg')),
          
        ),
        child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                               FirebaseAuth.instance.signOut();
                              },
                              icon: Icon(
                                Icons.logout_outlined,
                                color: darkBlue,
                              ),
                            ),
                            Image(
                              height: MediaQuery.of(context).size.height*0.2,
                              width: MediaQuery.of(context).size.width*0.2,
                              image: AssetImage(
                                'assets/images/some/mancity.png',
                              ),
                            ),
                            
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,bottom: 10),
                      child: Text(
                        "Squad",
                        style: TextStyle(
                            fontFamily: 'Fjalla',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: darkBlue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 5),
                      child: Squad(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Fixtures",
                        style: TextStyle(
                            fontFamily: 'Fjalla',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: darkBlue),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 5),
                      child: Fixtures(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 5),
                      child: PremierLeague(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 5),
                      child: Row(
                        children: [
                          Trophies(),
                          SizedBox(
                            width: 10,
                          ),
                          Kits()
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Bottom()
                  ]),
           
          
       
        ),
      ),
    );
  }
}
