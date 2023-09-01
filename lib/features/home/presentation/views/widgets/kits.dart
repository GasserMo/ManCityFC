import 'package:flutter/material.dart';
import 'package:mancityfc/constants.dart';
import 'package:mancityfc/features/kits/presentation/views/kits_body.dart';

class Kits extends StatelessWidget {
  const Kits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10),
      child: GestureDetector(
        onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>KitsBody()));
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
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Image(
                      image: AssetImage('assets/images/some/kit.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kits',
                        style: TextStyle(
                          color: darkBlue,
                          fontSize: 30,
                          fontFamily: 'Fjalla',
                        ),
                      ),
                     
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
