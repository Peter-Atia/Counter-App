import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.team,
    this.buttonNumber,
  });
  final String title;
  final String? team;
  final int? buttonNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffFF9900),
        ),
        onPressed: () {
          if (team != null) {
            BlocProvider.of<CounterCubit>(
              context,
            ).incrementCubit(team: team!, buttonNumber: buttonNumber!);
          }
          else{
            BlocProvider.of<CounterCubit>(context).resetCubit();
          }
        },
        child: Text(title, style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
