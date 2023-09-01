import 'package:flutter/material.dart';
import 'package:mancityfc/features/kits/presentation/views/widgets/kit_details.dart';

class HomeKitBody extends StatelessWidget {
  const HomeKitBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KitDetails(
            name: 'Manchester City Home Jersey',
            season: '2022/2023',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/firstKit.png'),
            kitImage2: AssetImage('assets/images/Kits/firstKit2.png'),
            kitImage3: AssetImage('assets/images/Kits/firstkit3.webp')),
        KitDetails(
            name: 'Manchester City Goalkeeper Home Jersey',
            season: '2022/2023',
            price: '50\$',
            kitImage1: AssetImage('assets/images/Kits/keeperhome.png'),
            kitImage2: AssetImage('assets/images/Kits/keeperhome2.png'),
            kitImage3: AssetImage('assets/images/Kits/keeperhome3.png')),
      ],
    );
  }
}
