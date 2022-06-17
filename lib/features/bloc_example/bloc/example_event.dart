part of 'example_bloc.dart';

abstract class ExampleEvent{}

class ExampleFindNameEvent extends ExampleEvent {}

class ExampleAddNameEvent extends ExampleEvent{}

class ExampleRemoveNameEvent extends ExampleEvent{
  final String nome;

  ExampleRemoveNameEvent({required this.nome});
}