import 'package:flutter/cupertino.dart';
import 'package:flutter_radio_app/models/speaker.model.dart';

class SpeakerController extends ChangeNotifier {
  List<SpeakerModel> speakerList = [];

  void addSpeakerList(List<SpeakerModel> list) {
    speakerList = list;
    _notf();
  }

  void clearSpeakerList() {
    speakerList.clear();
    _notf();
  }

  void _notf() {
    notifyListeners();
  }
}