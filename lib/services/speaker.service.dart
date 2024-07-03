

import 'package:flutter_radio_app/interfaces/http.interface.dart';
import 'package:flutter_radio_app/interfaces/speaker.interface.dart';
import 'package:flutter_radio_app/models/speaker.model.dart';
import 'package:flutter_radio_app/services/http.service.dart';

class SpeakerService implements ISpeakerService{
  IHttpService httpService = HttpService();

  @override
  Future<List<SpeakerModel>> getSpeakers({required String endpoint}) {
    return httpService.getAll(
      endpoint: endpoint,
      fromJson: SpeakerModel.fromJson,
    );
  }
}