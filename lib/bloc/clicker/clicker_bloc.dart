import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'clicker_event.dart';
part 'clicker_state.dart';

class ClickerBloc extends Bloc<ClickerEvent, ClickerState> {
  @override
  ClickerState get initialState => ClickerInitial();

  @override
  Stream<ClickerState> mapEventToState(
    ClickerEvent event,
  ) async* {
    if(event is UpdateClick){
      yield new UpdateClicks(showcolor: event.showcolor);
    }
  }

  @override
  void onTransition(Transition<ClickerEvent, ClickerState> transition) {
    super.onTransition(transition);
  }
}
