import 'package:flutter/cupertino.dart';
import 'package:flutter_radio_app/views/radio/radio.view.dart';
import 'package:flutter_radio_app/views/speakers/speakers.view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tab;
    return SafeArea(
      child: CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: const Color.fromARGB(255, 146, 17, 17),
            activeColor: CupertinoColors.white,
            inactiveColor: const Color.fromARGB(255, 176, 176, 176),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.antenna_radiowaves_left_right),
                label: 'Home',
                backgroundColor: CupertinoColors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_2_fill),
                label: 'Locutores',
                backgroundColor: CupertinoColors.white,
              ),
            ],
          ),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                tab = const RadioView();
                break;
              case 1:
                tab = const SpeakersView();
                break;
              default:
                tab = const HomeView();
            }
            return tab;
          },
        ),
      ),
    );
  }
}
