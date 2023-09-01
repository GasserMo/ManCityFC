

import 'package:flutter/material.dart';
import 'package:mancityfc/core/styles.dart';

class TeamForm extends StatelessWidget {
  const TeamForm({
    super.key,
    required this.standings, required this.text,
  });

  final List standings;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *
          0.05,
      child: Text(
          text,
          style: Styles.teams),
    );
  }
}
