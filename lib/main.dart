
import 'package:flutter/material.dart';
import 'package:flutterfirebaseddd/injection.dart';
import 'package:flutterfirebaseddd/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}

