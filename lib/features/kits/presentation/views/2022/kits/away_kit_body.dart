import 'package:flutter/material.dart';
import 'package:mancityfc/features/kits/presentation/views/widgets/kit_details.dart';

class AwayKitBody extends StatelessWidget {
  const AwayKitBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KitDetails(
            name: 'Manchester City Away Jersey',
            season: '2022/2023',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/awayKit.png'),
            kitImage2: AssetImage('assets/images/Kits/awayKit2.png'),
            kitImage3: AssetImage('assets/images/Kits/awayKit3.png')),
        KitDetails(
            name: 'Manchester City Goalkeeper Away Jersey',
            season: '2022/2023',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/keeperAway.png'),
            kitImage2: AssetImage('assets/images/Kits/keeperAway2.png'),
            kitImage3: AssetImage('assets/images/Kits/keeperAway2.png')),
      ],
    );
  }
}
