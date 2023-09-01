import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mancityfc/core/styles.dart';
import 'package:mancityfc/features/table/data/api/api_service.dart';

import 'widgets/team_form.dart';
import 'widgets/team_form_name.dart';

class PremierLeagueTable extends StatefulWidget {
  const PremierLeagueTable({
    Key? key,
  }) : super(key: key);
  @override
  State<PremierLeagueTable> createState() => _PremierLeagueTableState();
}

class _PremierLeagueTableState extends State<PremierLeagueTable> {
  ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    apiService.fetchStanding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration:const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/some/details.png'))),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                       Navigator.of(context).pop();
                        },
                        child:const FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          color: Colors.white,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image(
                        image:
                            AssetImage('assets/images/some/premierLeague.png'),
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                      'Standing',
                      style: Styles.font,
                    ),
                    Text(
                      '${apiService.season}',
                      style: Styles.font,
                    ),
                    ],
                  ),
                )
               
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 6, right: 8),
                child: Row(children: [
                const Text(
                    'Pos',
                    style: Styles.standing,
                  ),
                const  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                     width: MediaQuery.of(context).size.width * 0.5,
                     
                      child:const Text(
                        'Team',
                        style: Styles.standing,
                      ),
                    ),
                  ),
                const    TeamFormName(
                      text: 'P',
                    ),
                  const  TeamFormName(
                      text: 'W',
                    ),
                 const   TeamFormName(
                      text: 'D',
                    ),
                  const  TeamFormName(
                      text: 'L',
                    ),
                 const   TeamFormName(
                      text: 'GF',
                    ),
                  const  TeamFormName(
                      text: 'GA',
                    ),
                 const   TeamFormName(
                      text: 'GD',
                    ),
                   const TeamFormName(
                      text: 'Pts',
                    ),
                 
                ])),
          ),
          Expanded(
            child: FutureBuilder(
                future: apiService.fetchStanding(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                        child:
                            CircularProgressIndicator()); // Show loading indicator while fetching data
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    List<dynamic> standings = apiService.standings;
                    return ListView.builder(
                      itemCount: standings.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Text(
                                          ' ${standings[index]['position']}.  ${standings[index]['team']['shortName']}',
                                          style: Styles.teams),
                                    ),
                                  ),
                                 
                                  TeamForm(
                                    text:'${standings[index]['playedGames']}',
                                    standings: standings
                                  ),
                                    TeamForm(
                                    text:'${standings[index]['won']}',
                                    standings: standings
                                  ),
                                  TeamForm(
                                    text:'${standings[index]['draw']}',
                                    standings: standings
                                  ),
                                   TeamForm(
                                    text:'${standings[index]['lost']}',
                                    standings: standings
                                  ),
                                   TeamForm(
                                    text:'${standings[index]['goalsFor']}',
                                    standings: standings
                                  ),
                                   TeamForm(
                                    text:'${standings[index]['goalsAgainst']}',
                                    standings: standings
                                  ),
                                   TeamForm(
                                    text:'${standings[index]['goalDifference']}',
                                    standings: standings
                                  ),
                                  
                                   TeamForm(
                                    text:'${standings[index]['points']}',
                                    standings: standings
                                  ),
                                  
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1,
                            )
                          ],
                        );

                        // Other information
                      },
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}


