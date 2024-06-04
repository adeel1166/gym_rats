import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';

class NumberListWheel extends StatefulWidget {
  @override
  _NumberListWheelState createState() => _NumberListWheelState();
}

class _NumberListWheelState extends State<NumberListWheel> {
  final List<int> numbers = List<int>.generate(100, (index) => index + 1);
  final ScrollController _scrollController = FixedExtentScrollController();

  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: ClickableListWheelScrollView(
            scrollController: _scrollController,
            itemHeight: 50,
            itemCount: numbers.length,
            onItemTapCallback: (index) {
              setState(() {
                _selectedItemIndex = index;
              });
              print('Selected number: ${numbers[index]}');
            },
            child: ListWheelScrollView.useDelegate(
              controller: _scrollController,
              itemExtent: 50,
              perspective: 0.003,
              diameterRatio: 2.0,
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedItemIndex = index;
                });
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  return ListTile(
                    title: Center(
                      child: Text(
                        numbers[index].toString(),
                        style: TextStyle(
                          fontSize: 24,
                          color: _selectedItemIndex == index ? Colors.white : Colors.white,
                        ),
                      ),
                    ),
                  );
                },
                childCount: numbers.length,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 108,
                height: 2,
                color: Colors.red,
              ),
              SizedBox(height: 46), 
              Container(
                width: 108,
                height: 2,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
