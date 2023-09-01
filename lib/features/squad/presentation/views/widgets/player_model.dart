import 'package:flutter/material.dart';

import 'package:mancityfc/core/styles.dart';
import 'package:mancityfc/features/squad/presentation/views/view%20models/player.dart';


class PlayerModel extends StatefulWidget {
  const PlayerModel({Key? key, required this.player}) : super(key: key);
final Player player;

  @override
  State<PlayerModel> createState() => _PlayerModelState();
}

class _PlayerModelState extends State<PlayerModel> {
   bool _isImageVisible = false;

  @override
  void initState() {
    super.initState();
    // Delay the appearance of the player's image for a smooth animation
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _isImageVisible = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/some/card2.png'))),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.player.number, style: Styles.playerNumber),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage:
                        AssetImage(widget.player.nationality.assetName),
                  )
                ],
              ),
            ),
            AnimatedPositioned(
                duration:Duration(milliseconds: 1000),
              top:  _isImageVisible ? 5 : -MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.5,
                      image: AssetImage(widget.player.image.assetName)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Container(                     
                      child: Text(
                        widget.player.name,
                        textAlign: TextAlign.center,
                        style: Styles.playerName
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
