import 'package:bloc_project/color_bloc/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, changeColor) {
        return Center(
          child: Container(
            // alignment: ,
            color: changeColor,
            height: 300,
            width: 300,
          ),
        );
      },
    );
  }
}
