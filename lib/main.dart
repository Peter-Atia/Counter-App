import 'package:basketball_points_counter/widgets/CustomButton.dart';
import 'package:basketball_points_counter/widgets/CustomColumn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  const BasketballPointsCounter({super.key});

  @override
  State<BasketballPointsCounter> createState() =>
      _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
  int teamACounter = 0, teamBCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF9900),
          title: const Text("Points Counter"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomColumn(
                  onPressed1: () {
                    setState(() {
                      teamACounter++;
                    });
                  },
                  onPressed2: () {
                    setState(() {
                      teamACounter += 2;
                    });
                  },
                  onPressed3: () {
                    setState(() {
                      teamACounter += 3;
                    });
                  },
                  teamACounter: teamACounter,
                  title: "Team A",
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    indent: 30,
                    width: 10,
                    thickness: 2,
                    color: Colors.grey,
                  ),
                ),
                CustomColumn(
                  onPressed1: () {
                    setState(() {
                      teamBCounter++;
                    });
                  },
                  onPressed2: () {
                    setState(() {
                      teamBCounter += 2;
                    });
                  },
                  onPressed3: () {
                    setState(() {
                      teamBCounter += 3;
                    });
                  },
                  teamBCounter: teamBCounter,
                  title: "Team B",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CustomButton(
                title: "Reset",
                onPressed: () {
                  setState(() {
                    teamACounter = 0;
                    teamBCounter = 0;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
