import 'package:flutter_state_management/counter/GetX/counter_screen_getx..dart';
import 'package:flutter_state_management/counter/GetX/counter_screen_getx_reactive.dart';
import 'package:flutter_state_management/counter/provider/counter_screen_provider.dart';
import 'package:flutter_state_management/counter/riverpod/counter_screen_riverpod.dart';
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
        path: '/counter/getx',
        name: 'getx',
        builder: (context, state) => CounterScreenGetx()),
    GoRoute(
        path: '/counter/getx_reactive',
        name: 'getx_reactive',
        builder: (context, state) => CounterScreenGetxReactive()),
    GoRoute(
        path: '/counter/riverpod',
        name: 'riverpod',
        builder: (context, state) => const CounterScreenRiverpod()),
    GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const MyHomePage(title: 'Home')),
  ],
  initialLocation: '/',
);
