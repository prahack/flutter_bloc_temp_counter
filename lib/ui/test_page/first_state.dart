import 'package:flutter/material.dart';

@immutable
class FirstState {
  final int value;

  FirstState({
    @required this.value,
  });

  static FirstState get initialState => FirstState(
        value: 0,
      );

  FirstState clone({
    int value,
  }) {
    return FirstState(
      value: value ?? this.value,
    );
  }
}
