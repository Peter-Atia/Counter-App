import 'package:basketball_points_counter/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    super.key,
    this.teamACounter,
    this.teamBCounter,
    required this.title,
    required this.team,
  });
  final String title;
  final String team;

  final int? teamACounter;
  final int? teamBCounter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(title, style: TextStyle(fontSize: 30)),
              ),
              Text(
                teamACounter != null ? "$teamACounter" : "$teamBCounter",
                style: const TextStyle(fontSize: 130),
              ),

              for (int i = 0; i < 3; i++)
                CustomButton(
                  title: "Add ${i + 1} Points",
                  team: team,
                  buttonNumber: i+1,
                ),

              //CustomButton(title: "Add 1 Point", onPressed: onPressed1),
            ],
          ),
        ),
      ],
    );
  }
}
