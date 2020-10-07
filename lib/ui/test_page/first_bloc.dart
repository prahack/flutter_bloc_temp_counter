import 'package:bloctemp/ui/test_page/first_event.dart';
import 'package:bloctemp/ui/test_page/first_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {
  FirstBloc(BuildContext context) : super(FirstState.initialState);

  @override
  Stream<FirstState> mapEventToState(FirstEvent event) async* {
    switch (event.runtimeType) {
      case IncrementEvent:
        yield state.clone(value: state.value + 1);
    }
  }

  @override
  Future<void> close() async {
    await super.close();
  }
}
