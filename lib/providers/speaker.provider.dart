import 'package:flutter_radio_app/controllers/speaker.controller.dart';
import 'package:provider/provider.dart';

ChangeNotifierProvider speakerProvider = ChangeNotifierProvider<SpeakerController>(
  create: (context) => SpeakerController(),
);
