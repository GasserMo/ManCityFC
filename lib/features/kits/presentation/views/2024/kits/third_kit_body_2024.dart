import 'package:flutter/material.dart';
import 'package:mancityfc/features/kits/presentation/views/widgets/kit_details.dart';

class ThirdKitBody2024 extends StatelessWidget {
  const ThirdKitBody2024({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KitDetails(
            name: 'Manchester City Third Jersey',
            season: '2023/2024',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/2024/thirdkit/thirdkit.webp'),
            kitImage2: AssetImage('assets/images/Kits/2024/thirdkit/thirdkit2.png'),
            kitImage3: AssetImage('assets/images/Kits/2024/thirdkit/thirdkit2.png')),
        KitDetails(
            name: 'Manchester City Goalkeeper Third Jersey',
            season: '2023/2024',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/2024/thirdkit/keeperthirdkit.png'),
            kitImage2: AssetImage('assets/images/Kits/2024/thirdkit/keeperthirdkit2.png'),
            kitImage3: AssetImage('assets/images/Kits/2024/thirdkit/keeperthirdkit3.png')),
      ],
    );
  }
}
