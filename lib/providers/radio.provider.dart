import 'package:flutter_radio_app/controllers/radio.controller.dart';
import 'package:provider/provider.dart';

ChangeNotifierProvider radioProvider = ChangeNotifierProvider<RadioController>(
  create: (context) => RadioController(),
);
