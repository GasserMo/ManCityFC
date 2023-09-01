


import 'package:flutter/material.dart';
import 'package:mancityfc/features/squad/presentation/views/squad_body.dart';


class Squad extends StatelessWidget {
  const Squad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
           SquadBody()));
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.9,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              image:const DecorationImage(
                fit: BoxFit.fill,
                image:
                AssetImage('assets/images/some/squad2.png')),
              borderRadius: BorderRadius.circular(10),
              gradient:const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white]),
              // image: DecorationImage(
              //  image:
              // AssetImage('assets/images/some/deBruyne2.jpeg')
              //)
            ),
          ),
        ),
      ],
    );
  }
}
