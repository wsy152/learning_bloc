
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'example_event.dart';
part'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent,ExampleState>{

  ExampleBloc() : super(ExampleStateInitial()) {
    on<ExampleFindNameEvent>(_findNames);
    on<ExampleRemoveNameEvent>(_removeName);


  }

  FutureOr<void> _removeName(ExampleRemoveNameEvent event, Emitter<ExampleState> emit) {
    final stateExample = state;
    if (stateExample is ExampleStateData) {
      final names = [...stateExample.names];
      names.retainWhere((element) => element != event.nome);
      emit(ExampleStateData(names: names));
    }
  }

  FutureOr<void> _findNames(ExampleFindNameEvent event, Emitter<ExampleState> emit) async {

 

        final names = ["edvaldo", "carla", "Felipe","Jessica", "Tereza", "Carlos"];

        await  Future.delayed(const Duration(seconds: 3));

        emit(ExampleStateData(names: names));


      }
}
