// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'simpleloader_event.dart';
part 'simpleloader_state.dart';

abstract class SimpleloaderBloc<T>
    extends Bloc<SimpleloaderEvent, SimpleloaderState> {
  SimpleloaderBloc() : super(SimpleloaderInitial());

  @override
  Stream<SimpleloaderState> mapEventToState(
    SimpleloaderEvent event,
  ) async* {
    if (event is StartLoading) {
      yield SimpleloaderLoading();
      try {
        final T data = await load(event);
        yield SimpleloaderLoaded<T>(data);
      } catch (error) {
        yield SimpleloaderError(error);
      }
    }

    // switch (event.type) {
    //   case SimpleBlocEventType.StartLoading:
    //   default:
    //     yield SimpleLoadingState();
    //     try {
    //       final T items = await load(event);
    //       yield SimpleSuccessEventState<T>(items);
    //     } catch (error) {
    //       yield SimpleErrorEventState(error);
    //     }
    //     break;
    // }
  }

  Future<T> load(SimpleloaderEvent event);
}
