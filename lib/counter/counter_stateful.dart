import 'package:flutter/material.dart';
import 'package:flutter_state_management/counter/screen_counter_ui.dart';

class CounterStateful extends StatefulWidget {
  const CounterStateful({super.key});

  @override
  State<CounterStateful> createState() => _CounterStatefulState();
}

class _CounterStatefulState extends State<CounterStateful> {
  @override
  Widget build(BuildContext context) {
    return CounterUI();
  }
}