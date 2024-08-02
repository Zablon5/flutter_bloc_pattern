import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/bloc/counter_bloc.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("buttons page"),
      ),
      body: Center(
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {
                counterBloc.add(CounterIncremented());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                counterBloc.add(CounterDecremented());
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.minimize),
            ),
          ],
        ),
      ),
    );
  }
}
