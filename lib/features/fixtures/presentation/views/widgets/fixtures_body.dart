import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mancityfc/constants.dart';
import 'package:mancityfc/core/styles.dart';
import 'package:mancityfc/features/fixtures/data/api_service.dart';

class FixturesBody extends StatefulWidget {
  const FixturesBody({Key? key}) : super(key: key);

  @override
  State<FixturesBody> createState() => _FixturesBodyState();
}

class _FixturesBodyState extends State<FixturesBody> {
  FixturesApi apiService = FixturesApi();

  @override
  void initState() {
    super.initState();
    apiService.FetchFixutes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: 
          [
            babyBlue,
            Colors.white
          ])
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: darkBlue,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child:
                        FaIcon(FontAwesomeIcons.backspace, color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Fixtures', style: Styles.font),
                  Expanded(
                      child: Image(
                    height: MediaQuery.of(context).size.height * 0.09,
                    alignment: Alignment.topRight,
                    image: AssetImage('assets/images/some/mancity.png'),
                  ))
                ]),
              ),
            ),
            Expanded(
                child: FutureBuilder<void>(
                    future: apiService.FetchFixutes(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                            child:
                                CircularProgressIndicator()); // Show loading indicator while fetching data
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else {
                        List<dynamic> matches = apiService.matches;
                        return ListView.builder(
                            itemCount: matches.length,
                            itemBuilder: (context, index) {
                              final match = matches[index];
                              final homeTeam = match['homeTeam']['tla'];
                              final awayTeam = match['awayTeam']['tla'];
                              
                              final utcDate = match['utcDate'];
                              final homeCrestUrl = match['homeTeam']['crest'];
                              final awayCrestUrl = match['awayTeam']['crest'];
                              final competitionName =
                                  match['competition']['name'];
                              final competitionLogo =
                                  match['competition']['emblem'];
                              final score = match['score']['fullTime'];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          0.05,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: darkBlue,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8.0),
                                            child: Image(
                                                color: Colors.white,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                image: NetworkImage(
                                                    '$competitionLogo')),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              '${competitionName}',
                                              style: Styles.kitStyle
                                                  .copyWith(fontSize: 25),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          0.08,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10))),
                                      child: Column(children: [
                                        Text(
                                          '${utcDate}',
                                          style: TextStyle(color: darkBlue,
                                          fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  image: NetworkImage(
                                                      '$homeCrestUrl')),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '${homeTeam}',
                                                style: Styles.teams
                                                .copyWith(fontSize: 15),
                                              ),
                                              Container(
                                                 
                                                color: darkBlue,
                                                child:Row(children: [
                                                  Text(
                                                '${score['home']} -',
                                                style: Styles.teams
                                                    .copyWith(fontSize: 15,color: Colors.white),
                                              ),
                                               Text(
                                                '${score['away']}',
                                                style: Styles.teams
                                                    .copyWith(fontSize: 15,color: Colors.white),
                                              ),
                                                ]) ,
                                              ),
                                              Text(
                                                '${awayTeam}',
                                                style: Styles.teams
                                                    .copyWith(fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Image(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  image: NetworkImage(
                                                      '$awayCrestUrl')),
                                            ],
                                          ),
                                        ),
                                       
                                      ]),
                                    )
                                  ],
                                ),
                              );
                            });
                      }
                    }))
          ],
        ),
      ),
    );
  }
}
