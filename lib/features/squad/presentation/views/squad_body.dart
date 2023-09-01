import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mancityfc/constants.dart';
import 'package:mancityfc/core/providers/player_provider/players.dart';
import 'package:mancityfc/core/routers.dart';
import 'package:mancityfc/core/styles.dart';
import 'package:mancityfc/core/widgets/bottom.dart';
import 'package:mancityfc/features/squad/presentation/views/widgets/player_model.dart';
import 'package:provider/provider.dart';

class SquadBody extends StatelessWidget {
  const SquadBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       final playerProvider= Provider.of<Players>(context);
  final player= playerProvider.players;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [babyBlue, Colors.white])),
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            color: darkBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: InkWell(
                      onTap: () {
                       Navigator.of(context).pop();
                      },
                      child: FaIcon(
                        FontAwesomeIcons.backspace,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Squad",
                    style: Styles.font.copyWith(fontSize: 30),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kFav);
                  },
                  child: Icon(
                    size:30,
                    Icons.favorite,
                  color: Colors.white,),
                ),
                SizedBox(width: 10,),
                Image(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.height * 0.05,
                    image: AssetImage('assets/images/some/mancity.png')),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: player.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
              ), itemBuilder: ( context,  index) {
                 return PlayerModel(
                  player: player[index],
                 );
              },
            ),
          ),
          
          Bottom()
        ]),
      ),
    );
  }
}
