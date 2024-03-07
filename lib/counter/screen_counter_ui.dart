import 'package:flutter/material.dart';
import 'package:flutter_state_management/main.dart';
import 'package:flutter_state_management/my_ui_box_btn.dart';

class CounterUI extends StatefulWidget {
  CounterUI({super.key}) {}

  @override
  State<CounterUI> createState() => _CounterUIState();
}

class _CounterUIState extends State<CounterUI> {
  int _count = 0;
  int _selectCount = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Column(
          children: [
            myBoxButton(
                onSelect: _onSelect, number: 1, selectNumber: _selectCount),
            myBoxButton(
                onSelect: _onSelect, number: 10, selectNumber: _selectCount),
            myBoxButton(
                onSelect: _onSelect, number: 20, selectNumber: _selectCount),
            myBoxButton(
                onSelect: _onSelect, number: 50, selectNumber: _selectCount),
            myBoxButton(
                onSelect: _onSelect, number: 100, selectNumber: _selectCount),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          children: [
            Center(
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 60),
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        // _count = _count + _selectCount;
                        _onIncrement();
                        logger
                            .d('selectCount : $_selectCount, count : $_count');
                      });
                    },
                    icon: const Icon(
                      Icons.add_circle,
                      size: 50,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _onDecrement();
                        logger
                            .d('selectCount : $_selectCount, count : $_count');
                      });
                    },
                    icon: const Icon(
                      Icons.remove_circle,
                      size: 50,
                    )),
              ],
            ),
            InkWell(
              onTap: _onReset,
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: 48,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(71, 71, 71, 1),
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    "Reset",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  void _onSelect(int num) {
    setState(() {
      _selectCount = num;
      logger.d('Select selectCount : $_selectCount, count : $_count');
    });
  }

  void _onIncrement() {
    setState(() {
      _count = _count + _selectCount;
      logger.d('Increment selectCount : $_selectCount, count : $_count');
    });
  }

  void _onDecrement() {
    setState(() {
      _count = _count - _selectCount;
      logger.d('Decrement selectCount : $_selectCount, count : $_count');
    });
  }

  void _onReset() {
    setState(() {
      _count = 0;
      _selectCount = 1;
      logger.d('Reset selectCount : $_selectCount, count : $_count');
    });
  }
}
