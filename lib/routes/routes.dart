import 'package:flutter_radio_app/views/home/home.view.dart';
import 'package:go_router/go_router.dart';

final GoRouter routesIOS = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomeView();
    },
  ),
]);
