import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:basketball_points_counter/widgets/CustomButton.dart';
import 'package:basketball_points_counter/widgets/CustomColumn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
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
                    teamACounter: BlocProvider.of<CounterCubit>(
                      context,
                    ).teamAPoints,
                    title: "Team A",
                    team: 'A',
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
                    teamBCounter: BlocProvider.of<CounterCubit>(
                      context,
                    ).teamBPoints,
                    title: "Team B",
                    team: 'B',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: CustomButton(title: "Reset"),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
