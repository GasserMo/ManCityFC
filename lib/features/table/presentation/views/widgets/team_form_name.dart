
import 'package:flutter/material.dart';
import 'package:mancityfc/core/styles.dart';

class TeamFormName extends StatelessWidget {
  const TeamFormName({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: MediaQuery.of(context).size.width * 0.05,
    child: Text(
     text,
      style: Styles.standing,
    ),
                  );
  }
}