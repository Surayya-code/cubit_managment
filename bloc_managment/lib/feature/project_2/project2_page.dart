import 'package:bloc_managment/feature/project_2/names_cubit.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math show Random;

import 'package:flutter_bloc/flutter_bloc.dart';

class Project2Page extends StatelessWidget {
  const Project2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<NamesCubit>(
      create: (_) => NamesCubit(userList: _userList),
      child: const Project2View(),
    );
    
  }
}

class Project2View extends StatelessWidget {
  const Project2View({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(title:const Text('Names Cubit Text'),),
     body: BlocBuilder<NamesCubit,String?>(
      builder: (context,String? nameState){
        final textButton=TextButton(
        onPressed: (){
          context.read<NamesCubit>().getRandomName();
        }, 
        child: const Text('Fetch User'));
        if(nameState!=null){
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(nameState,style: Theme.of(context).textTheme.headline3,),
                  textButton
            ],),
          );
        }else{
          return Center(child: textButton,);
        }
      },
      ),
    );
  }
}

 const Iterable<String> _userList=<String>[
    'Eleanora','Langworth',
    'Darron','Katlynn',
    'Tristian','Cruz',
    'Malcolm',
 ];


