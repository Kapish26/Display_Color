import 'package:bloc_project/color_bloc/color_bloc.dart';
import 'package:bloc_project/widgets/displaycolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display app".toUpperCase()),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          DisplayColor(),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildColorButton(context, Colors.black, 'black'),
              buildColorButton(context, Colors.blue, 'blue'),
              buildColorButton(context, Colors.red, 'red'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildColorButton(context, Colors.green, 'green,'),
              buildColorButton(context, Colors.yellow[600], 'yellow'),
              buildColorButton(context, Colors.purple, 'purple'),
            ],
          ),
        ],
      ),
    );
  }

  RaisedButton buildColorButton(
      BuildContext context, Color buttonColor, String colorName) {
    return RaisedButton(
      color: buttonColor,
      onPressed: () {
        context.bloc<ColorBloc>().add(ColorEvent(changeColor: buttonColor));
      },
      child: Text(
        colorName.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
