import 'package:flutter/material.dart';
import 'package:flutter_state_management/router.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  //       useMaterial3: true,
  //     ),
  //     home: const MyHomePage(title: 'Flutter State Management'),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: const CounterScreenStateful(),
      // body: const CounterScreenProvider(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text("Select page you want to go...",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // context.goNamed("stateful");
                // context.go('/counter/stateful');
                context.push('/counter/stateful');
              },
              child: const Text("Go to Stateful Screen"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // context.goNamed("provider");
                // context.go('/counter/provider');
                context.push('/counter/provider');
              },
              child: const Text("Go to Provider Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
