import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:martify/app.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);

}

