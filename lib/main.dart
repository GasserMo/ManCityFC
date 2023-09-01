import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mancityfc/core/providers/player_provider/players.dart';
import 'package:mancityfc/core/routers.dart';
import 'package:mancityfc/features/authentication/presentation/views/auth_screen.dart';
import 'package:mancityfc/features/home/presentation/views/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
      ChangeNotifierProvider.value(value: 
      Players()),

      ],
      child: MaterialApp(
        home: StreamBuilder(
          stream:  FirebaseAuth.instance.authStateChanges(),
         builder: (ctx,snapshot){
          if(snapshot.hasData){
            return HomeScreen();
          }
          return AuthScreen();
        }),
      )
    );
  }
}

