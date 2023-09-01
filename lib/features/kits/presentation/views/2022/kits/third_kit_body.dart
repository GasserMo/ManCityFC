import 'package:flutter/material.dart';
import 'package:mancityfc/features/kits/presentation/views/widgets/kit_details.dart';

class ThirdKitBody extends StatelessWidget {
  const ThirdKitBody({
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
            kitImage1: AssetImage('assets/images/Kits/thirdKit.png'),
            kitImage2: AssetImage('assets/images/Kits/thirdKit2.png'),
            kitImage3: AssetImage('assets/images/Kits/thirdKit3.webp')),
        KitDetails(
            name: 'Manchester City Goalkeeper Away Jersey',
            season: '2022/2023',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/thirdKeeper.webp'),
            kitImage2: AssetImage('assets/images/Kits/thirdKeeper.webp'),
            kitImage3: AssetImage('assets/images/Kits/thirdkeeper3.png')),
      ],
    );
  }
}
