import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/counter/counter_screen_ui.dart';
import 'package:flutter_state_management/counter/riverpod/counter_riverpod.dart';

final counterStateNotifierProvider =
    StateNotifierProvider<CounterRiverpod, int>((ref) {
  return CounterRiverpod(0);
});

var countProvider = StateProvider<int>((ref) {
  return 0;
});

final selectCountProvider = StateProvider<int>((ref) {
  return 1;
});

class CounterScreenRiverpod extends ConsumerWidget {
  const CounterScreenRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final counterRead = ref.read(counterStateNotifierProvider.notifier);
    // final counterState = ref.watch(counterStateNotifierProvider);

    final count = ref.read(countProvider);
    final selectCount = ref.read(selectCountProvider);

    CounterRiverpod noti = ref.watch(counterStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('Counter Riverpod'),
      ),
      body: countScreenUI(
        context: context,
        count: count,
        selectCount: selectCount,
        onIncrement: () {
          ref
              .read(countProvider.notifier)
              .update((state) => state + selectCount);
        },
        onSelect: (value) {
          ref.read(countProvider.notifier).update((state) => state = value);
        }, //noti.onSelect,
        onDecrement: () {
          ref
              .read(countProvider.notifier)
              .update((state) => state - selectCount);
        }, //noti.onDecrement,
        onReset: () {
          ref.read(countProvider.notifier).update((state) => state = 0);
          ref.read(selectCountProvider.notifier).update((state) => state = 1);
        }, //noti.onReset,
      ),
    );
  }
}
