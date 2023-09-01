import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
    CustomButton({Key? key, required this.child,required this.onTap}) : super(key: key);
Widget? child;
void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(10), bottom: Radius.circular(40)),
            color: Color(0XFF001838)),
        child: Center(
          child: child
        ),
      ),
    );
  }
}
