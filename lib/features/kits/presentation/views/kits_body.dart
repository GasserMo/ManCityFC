

import 'package:flutter/material.dart';

import 'package:mancityfc/features/kits/presentation/views/2022/kits_2022_body.dart';
import 'package:mancityfc/features/kits/presentation/views/2024/kits_2024_body.dart';
enum MenuItem { item1, item2, item3 }

class KitsBody extends StatefulWidget {
  const KitsBody({Key? key}) : super(key: key);

  @override
  State<KitsBody> createState() => _KitsBodyState();
}

class _KitsBodyState extends State<KitsBody> {
 String _selectedMenuItem = ''; // Initial selection

  void _handleMenuItemSelected(String selectedItem) {
    setState(() {
      _selectedMenuItem = selectedItem;
    });
  }
  Widget _buildScreenContent() {
    if (_selectedMenuItem == '2024') {
      return KitsBody2024();
    } else if (_selectedMenuItem == '2023') {
            return KitBody2022();

    } 
    return KitsBody2024();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: PopupMenuButton<String>(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        onSelected: _handleMenuItemSelected,
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem<String>(
              value: '2024',
              child: Text('2024'),
            ),
            PopupMenuItem<String>(
              value: '2023',
              child: Text('2023'),
            ),
            
          ];
        },
      ),

     body: Container(
      decoration: BoxDecoration(
        image: DecorationImage
        (fit: BoxFit.cover,
          image:
           AssetImage('assets/images/some/cityyy.jpeg')
         )
      ),
      child: _buildScreenContent())
       
        );
  }
}