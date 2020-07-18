import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorEvent {
  Color changeColor;
  ColorEvent({this.changeColor});
}

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.white);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    yield event.changeColor;
  }
}
