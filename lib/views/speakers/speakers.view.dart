import 'package:flutter/material.dart';
import 'package:flutter_radio_app/controllers/speaker.controller.dart';
import 'package:flutter_radio_app/interfaces/speaker.interface.dart';
import 'package:flutter_radio_app/models/speaker.model.dart';
import 'package:flutter_radio_app/services/speaker.service.dart';
import 'package:provider/provider.dart';

class SpeakersView extends StatelessWidget {
  const SpeakersView({super.key});

  @override
  Widget build(BuildContext context) {
    SpeakerController speakerController = context.read<SpeakerController>();
    ISpeakerService speakerService = SpeakerService();
    return FutureBuilder(future: speakerService.getSpeakers(endpoint: 'users?limit=5&skip=10&select=firstName,age'), builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}'));
      } else if (snapshot.hasData) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          print(snapshot.data!);
          speakerController.addSpeakerList(snapshot.data!);
        });
        return Consumer<SpeakerController>(builder: (context, speakerController, child) {
          return Center(
            child: ListView.builder(
              itemCount: speakerController.speakerList.length,
              itemBuilder: (context, index) {
                SpeakerModel speaker = speakerController.speakerList[index];
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Text(speaker.firstName!),
                  // title: Text(speaker.firstName!),
                  // subtitle: Text(speaker.age.toString()),
                );
              },
            )
          );
        });
      } else {
        return const Center(child: Text('No data'));
      }
    },);
  }
}
