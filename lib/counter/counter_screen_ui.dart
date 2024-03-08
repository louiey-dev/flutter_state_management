import 'package:flutter/material.dart';
import 'package:flutter_state_management/my_ui_box_btn.dart';

Stack countScreenUI({
  required BuildContext context,
  required int count,
  required int selectCount,
  required Function() onIncrement,
  required Function() onDecrement,
  required Function() onReset,
  required Function(int) onSelect,
}) {
  return Stack(
    children: [
      Row(
        children: [
          const SizedBox(width: 10),
          Column(
            children: [
              myBoxButton(
                  onSelect: onSelect, number: 1, selectNumber: selectCount),
              myBoxButton(
                  onSelect: onSelect, number: 10, selectNumber: selectCount),
              myBoxButton(
                  onSelect: onSelect, number: 20, selectNumber: selectCount),
              myBoxButton(
                  onSelect: onSelect, number: 50, selectNumber: selectCount),
              myBoxButton(
                  onSelect: onSelect, number: 100, selectNumber: selectCount),
            ],
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              Center(
                child: Text(
                  '$count',
                  style: const TextStyle(fontSize: 60),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        onIncrement();
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        size: 50,
                      )),
                  IconButton(
                      onPressed: () {
                        onDecrement();
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                        size: 50,
                      )),
                ],
              ),
              InkWell(
                onTap: onReset,
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
      ),
    ],
  );
}
