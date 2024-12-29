part of 'simpleloader_bloc.dart';

abstract class SimpleloaderState extends Equatable {
  const SimpleloaderState();

  @override
  List<Object> get props => [];
}

class SimpleloaderInitial extends SimpleloaderState {}

class SimpleloaderLoading extends SimpleloaderState {}

class SimpleloaderLoaded<T> extends SimpleloaderState {
  final T data;
  SimpleloaderLoaded(this.data);
}

class SimpleloaderError extends SimpleloaderState {
  final error;
  SimpleloaderError(this.error);
}
