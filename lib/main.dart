import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_radio_app/providers/speaker.provider.dart';
import 'package:flutter_radio_app/radio.app.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await dotenv.load(fileName: '.env');
  } catch (e) {
    print('Error loading .env: $e');
  }
  runApp(MultiProvider(providers: [speakerProvider], child: const RadioApp()));
}
