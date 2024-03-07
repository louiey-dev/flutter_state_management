import 'package:flutter/material.dart';

/// Drawing box based on Inkwell widget.
/// It returns number when pressed via onTap callback
///
/// number : number to display on Inkwell box
///
/// selectNumber : Press box returns value, same as number
///
/// onSelect : callback which returns select number when its box is pressed
InkWell myBoxButton({
  required Function(int) onSelect,
  required int number,
  required int selectNumber,
}) {
  Color boxColorOn = const Color.fromRGBO(91, 91, 91, 1);
  Color boxColorOff = const Color.fromRGBO(61, 61, 61, 1);
  Color numColorOn = Colors.white;
  Color numColorOff = const Color.fromRGBO(155, 155, 155, 1);
  double boxWidth = 48;
  double boxHeight = 48;

  return InkWell(
    onTap: () => onSelect(number),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
          width: boxWidth,
          height: boxHeight,
          decoration: BoxDecoration(
              color: selectNumber == number ? boxColorOn : boxColorOff,
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text('$number',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          selectNumber == number ? numColorOn : numColorOff)))),
    ),
  );
}
