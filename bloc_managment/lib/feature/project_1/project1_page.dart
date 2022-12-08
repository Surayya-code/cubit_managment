import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class Project1Page extends StatelessWidget {
  const Project1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(0),
      child: const Project1View(),
    );
  }
}

class Project1View extends StatelessWidget {
  const Project1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: BlocBuilder<CounterCubit,int>(
        builder: (context,appState) {
          return  Center(
            child: Text(appState.toString(),style: const TextStyle(fontSize: 30),),
          );
        }
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: () {
            context.read<CounterCubit>().increament();
          }, child: const Icon(Icons.add)),
          TextButton(onPressed: () {
            context.read<CounterCubit>().decrement();
          }, child: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}

/* Center(
        child: TextButton(
          onPressed: () {
            //context.read()<CounterCubit>();
          },
          child: const Text('Home Pageee'),
        ),
      ), */