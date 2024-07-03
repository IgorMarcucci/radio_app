import 'package:flutter/material.dart';
import 'package:flutter_radio_app/interfaces/speaker.interface.dart';
import 'package:flutter_radio_app/services/speaker.service.dart';

class SpeakersView extends StatelessWidget {
  const SpeakersView({super.key});

  @override
  Widget build(BuildContext context) {
    ISpeakerService speakerService = SpeakerService();
    return FutureBuilder(future: speakerService.getSpeakers(endpoint: 'users?limit=5&skip=10&select=firstName,age'), builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}'));
      } else if (snapshot.hasData) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            
        });
        return Placeholder();
      } else {
        return const Center(child: Text('No data'));
      }
    },);
  }
}
