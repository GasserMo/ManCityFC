

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mancityfc/features/kits/presentation/views/2024/kits/away_kit_body_2024.dart';
import 'package:mancityfc/features/kits/presentation/views/2024/kits/home_kit_body_2024.dart';
import 'package:mancityfc/features/kits/presentation/views/2024/kits/third_kit_body_2024.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class KitsBody2024 extends StatefulWidget {
  KitsBody2024({Key? key}) : super(key: key);

  @override
  State<KitsBody2024> createState() => _KitsBody2024State();
}

class _KitsBody2024State extends State<KitsBody2024>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
     TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      children:[
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween
                ,children: [
                  GestureDetector(
                    onTap:(){
                       Navigator.of(context).pop();

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(FontAwesomeIcons.arrowLeft,
                        color: Colors.white,),
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
                child: TabBar(
                  labelColor: Color(0XFF2388AE),
                  splashBorderRadius: BorderRadius.circular(10),
                  unselectedLabelColor: Colors.white,
                  labelStyle: TextStyle(
                      fontFamily: 'Fjalla',
                      fontSize:20
                  ),
                  indicator: RectangularIndicator(
                    bottomLeftRadius: 100,
                    bottomRightRadius: 100,
                    topLeftRadius: 300,
                    topRightRadius: 300,
                    color: Colors.white
                  ),
                    controller: tabController,
                    tabs: [
                      Tab(
                      child: Text('HOME',
                        ),
                      ),
                      Tab(child: Text('AWAY',
                        ),),
                      Tab(child: Text('THIRD',
                        ),),
                    ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.8,
                  child: TabBarView(
                      controller: tabController,
                      children: [
                        HomeKitBody2024(),
                        AwayKitBody2024(),
                        ThirdKitBody2024(),
                      ]),
                ),
              )
            ],
          ),
        ),
      ]
    );
  }
}