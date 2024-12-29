part of 'simpleloader_bloc.dart';

abstract class SimpleloaderEvent extends Equatable {
  const SimpleloaderEvent();

  @override
  List<Object> get props => [];
}

class SimpleloaderLoad extends SimpleloaderEvent {
  final Future future;
  SimpleloaderLoad(this.future);
}

class StartLoading extends SimpleloaderEvent {}

