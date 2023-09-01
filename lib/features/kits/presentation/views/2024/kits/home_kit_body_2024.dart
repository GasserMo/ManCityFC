import 'package:flutter/material.dart';
import 'package:mancityfc/features/kits/presentation/views/widgets/kit_details.dart';

class HomeKitBody2024 extends StatelessWidget {
  const HomeKitBody2024({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KitDetails(
            name: 'Manchester City Home Jersey',
            season: '2023/2024',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/2024/homekit/homekit.webp'),
            kitImage2: AssetImage('assets/images/Kits/2024/homekit/homekit1.png'),
            kitImage3: AssetImage('assets/images/Kits/2024/homekit/homekit2.webp')),
        KitDetails(
            name: 'Manchester City Goalkeeper Home Jersey',
            season: '2023/2024',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/2024/homekit/keeperhomekit.png'),
            kitImage2: AssetImage('assets/images/Kits/2024/homekit/keeperhomekit2.png'),
            kitImage3: AssetImage('assets/images/Kits/2024/homekit/keeperhomekit3.webp')),
      ],
    );
  }
}
