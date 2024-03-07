import 'package:flutter/material.dart';
import 'package:flutter_state_management/main.dart';

class ScreenCounterUI extends StatefulWidget {
  const ScreenCounterUI({super.key});

  @override
  State<ScreenCounterUI> createState() => _ScreenCounterUIState();
}

class _ScreenCounterUIState extends State<ScreenCounterUI> {
  int _count = 0;
  int _selectCount = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            // const SizedBox(height: 5),
            counterBtn(
              number: 1,
              selectNumber: _selectCount,
              onTap: _select,
            ),
            // const SizedBox(height: 5),
            counterBtn(
              number: 10,
              selectNumber: _selectCount,
              onTap: _select,
            ),
            // const SizedBox(height: 5),
            counterBtn(
              number: 20,
              selectNumber: _selectCount,
              onTap: _select,
            ),
            // const SizedBox(height: 5),
            counterBtn(
              number: 50,
              selectNumber: _selectCount,
              onTap: _select,
            ),
            // const SizedBox(height: 5),
            counterBtn(
              number: 100,
              selectNumber: _selectCount,
              onTap: _select,
            ),
          ],
        )
      ],
    );
  }

  void _select(int number) {
    setState(() {
      logger.d("selectCount = $number");
      _selectCount = number;
    });
  }
}

InkWell counterBtn({
  required Function(int) onTap,
  required int number,
  required int selectNumber,
}) {
  const double size = 48;
  const SizedBox(height: 5);
  return InkWell(
      onTap: onTap(number),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            color: selectNumber == number
                ? const Color.fromRGBO(91, 91, 91, 1)
                : const Color.fromRGBO(61, 61, 61, 1),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            '$number',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectNumber == number
                    ? Colors.white
                    : const Color.fromRGBO(155, 155, 155, 1)),
          ),
        ),
      ));
}
