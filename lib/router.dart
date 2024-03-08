import 'package:flutter_state_management/counter/provider/counter_screen_provider.dart';
import 'package:flutter_state_management/counter/stateful/counter_screen_stateful.dart';
import 'package:flutter_state_management/main.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/counter/provider',
        name: 'provider',
        builder: (context, state) => const CounterScreenProvider()),
    GoRoute(
        path: '/counter/stateful',
        name: 'stateful',
        builder: (context, state) => const CounterScreenStateful()),
    GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const MyHomePage(title: 'Home')),
  ],
  initialLocation: '/',
);
