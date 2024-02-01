import 'package:counterapp_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<CounterCubit>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () => counter.increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16), // Adding space between the buttons
        FloatingActionButton(
          onPressed: () => counter.decrement(),
          tooltip: 'Decrement',
          child: const Icon(Icons.minimize),
        ),
      ],
    );
  }
}
