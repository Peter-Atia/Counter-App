import 'package:basketball_points_counter/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    super.key,
    required this.onPressed1,
    required this.onPressed2,
    required this.onPressed3,
    this.teamACounter,
    this.teamBCounter,
    required this.title,
  });
  final String title;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  final VoidCallback onPressed3;
  final int ?teamACounter;
  final int ?teamBCounter;

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
                padding:const EdgeInsets.only(top: 8),
                child: Text(title, style: TextStyle(fontSize: 30)),
              ),
              Text(
                teamACounter != null ?
                "$teamACounter" : "$teamBCounter",
                style: const TextStyle(fontSize: 130),
              ),
              CustomButton(title: "Add 1 Point", onPressed: onPressed1),
              CustomButton(title: "Add 2 Point", onPressed: onPressed2),
              CustomButton(title: "Add 3 Point", onPressed: onPressed3),

            ],
          ),
        ),


      ],
    );
  }
}
