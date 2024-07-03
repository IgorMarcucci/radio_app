import 'package:flutter_radio_app/models/speaker.model.dart';

abstract class ISpeakerService {
  Future<List<SpeakerModel>> getSpeakers({required String endpoint});
}