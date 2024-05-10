import 'package:flutter/material.dart';
import 'package:flutter_radio_app/providers/radio.provider.dart';
import 'package:flutter_radio_app/radio.app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [radioProvider], child: const RadioApp()));
}
