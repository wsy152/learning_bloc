
import 'dart:developer';

import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExample extends StatelessWidget {

  const BlocExample({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Bloc Example'),),
           body: BlocListener<ExampleBloc,ExampleState>(
             listener: (context, state) {

              if(state is ExampleStateData) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('A quantidade de nomes é ${state.names.length}'))
                );
              }
               
             },

             child: Column(
               children: [
                 BlocConsumer<ExampleBloc,ExampleState>(
                    listener: (context, state) {
                      log('Estado alterado para ${state.runtimeType}');
                    },
                   builder: (_, state) {
                     if(state is ExampleStateData) {
                       return Text('Total é ${state.names.length}');
                     }
                     return const SizedBox.shrink();
                     
                   }), 
                  
                 



                 BlocBuilder<ExampleBloc,ExampleState>(
                   builder: (context, state) {
                     if(state is ExampleStateData){
                       return ListView.builder(
                         shrinkWrap: true,
                         itemCount: state.names.length,
                         itemBuilder: (context,index){
                           final name = state.names[index];
                           return ListTile(
                             title: Text(name),
                           );
           
                         }
                         );
                     }
                     return const CircularProgressIndicator();
                     
                   },
                 ),
               ],
             ),
           ),
       );
  }
}