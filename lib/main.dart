import 'package:flutter/material.dart';
import 'package:flutter_app/app/data/injection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/app/app.dart';


void main() {
  Injector.configureData(Data.MOCK);

  runApp(new MaterialApp(home: new CookingApp()));
}