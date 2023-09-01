import 'package:flutter/material.dart';
import 'package:mancityfc/features/kits/presentation/views/widgets/kit_details.dart';

class AwayKitBody2024 extends StatelessWidget {
  const AwayKitBody2024({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KitDetails(
            name: 'Manchester City Away Jersey',
            season: '2023/2024',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/2024/awaykit/awaykit.webp'),
            kitImage2: AssetImage('assets/images/Kits/2024/awaykit/awaykit2.png'),
            kitImage3: AssetImage('assets/images/Kits/2024/awaykit/awaykit3.png')),
        KitDetails(
            name: 'Manchester City Goalkeeper Away Jersey',
            season: '2023/2024',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/2024/awaykit/keeperawaykit.png'),
            kitImage2: AssetImage('assets/images/Kits/2024/awaykit/keeperawaykit2.png'),
            kitImage3: AssetImage('assets/images/Kits/2024/awaykit/keeperawaykit3.png')),
      ],
    );
  }
}
