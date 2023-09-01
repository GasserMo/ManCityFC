import 'package:flutter/material.dart';
import 'package:mancityfc/features/fixtures/presentation/views/widgets/fixtures_body.dart';

class Fixtures extends StatelessWidget {
  const Fixtures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FixturesBody()));
          },
          child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 10, right: 10),
              
              decoration: BoxDecoration(
                
                color: Colors.white,
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
                 
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 35.0),
                        child: Image(
                          image: AssetImage('assets/images/some/mancity.png'),
                          width: MediaQuery.of(context).size.width*0.15,
                          height: MediaQuery.of(context).size.height*0.15,
                        ),
                      )),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, right: 35),
                        child: Image(
                          image: AssetImage('assets/images/some/mancity.png'),
                        width: MediaQuery.of(context).size.width*0.15,
                          height: MediaQuery.of(context).size.height*0.15,
                        ),
                      )),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tue 11 Apr",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Fjalla',
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Champions League",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Fjalla',
                                color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.09,
                          width: MediaQuery.of(context).size.width*0.15,
                          decoration: BoxDecoration(color: Colors.white30),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Center(
                                  child: Text('22:00',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Fjalla',
                                          color: Colors.white)),
                                ),
                              ),
                              Text('PM',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
