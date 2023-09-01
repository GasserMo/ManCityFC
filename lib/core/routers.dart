import 'package:go_router/go_router.dart';

import 'package:mancityfc/features/authentication/presentation/views/auth_screen.dart';
import 'package:mancityfc/features/fixtures/presentation/views/widgets/fixtures_body.dart';
import 'package:mancityfc/features/home/presentation/views/home_screen.dart';
import 'package:mancityfc/features/kits/presentation/views/kits_body.dart';
import 'package:mancityfc/features/squad/presentation/views/squad_body.dart';
import 'package:mancityfc/features/table/presentation/views/premier_league_table_body.dart';
import 'package:mancityfc/features/trophies/presentation/views/trophies_body.dart';

abstract class AppRouter{
  static const kAuth= '/auth';
  static const kHome= '/home';
  static const kTrophies= '/trophies';
  static const kits= '/kits';
  static const kPremier= '/premier';
  static const kFixtures= '/fixtures';
  static const kSquad= '/squad';
  static const kFav= '/fav';

  static final router= GoRouter(routes: [
   GoRoute(path: '/', builder: (context,state)=>  AuthScreen(),
   
     ) ,
      GoRoute(path: kHome, builder: (context,state)=> const HomeScreen() ),
      GoRoute(path: kTrophies, builder: (context,state)=> const TrophiesBody() ),
      GoRoute(path: kits, builder: (context,state)=> const KitsBody() ),
      GoRoute(path: kPremier, builder: (context,state)=>  PremierLeagueTable() ),
      GoRoute(path: kFixtures, builder: (context,state)=>  FixturesBody() ),
      GoRoute(path: kSquad, builder: (context,state)=>  SquadBody() ),
      GoRoute(path: kFav, builder: (context,state)=>  SquadBody() ),

  ]);
}