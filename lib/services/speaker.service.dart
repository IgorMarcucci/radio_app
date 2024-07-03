

import 'package:flutter_radio_app/interfaces/http.interface.dart';
import 'package:flutter_radio_app/models/speaker.model.dart';
import 'package:flutter_radio_app/services/http.service.dart';

class SpeakerService {
  IHttpService httpService = HttpService();

  Future<List<SpeakerModel>> getSpeakers(String endpoint, String token) {
    return httpService.getAll(
      endpoint: endpoint,
      fromJson: SpeakerModel.fromJson,
      token: token,
    );
  }
}