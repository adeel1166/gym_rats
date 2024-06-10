import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';

class NumberListWheel extends StatefulWidget {
  final TextEditingController? controller;
  final int maxNumber;
  final String unit;

  NumberListWheel({this.controller, this.maxNumber = 100, this.unit = ''});

  @override
  _NumberListWheelState createState() => _NumberListWheelState();
}

class _NumberListWheelState extends State<NumberListWheel> {
  late final List<int> numbers;
  late final FixedExtentScrollController _scrollController;
  int _selectedItemIndex = 0;

  @override
  void initState() {
    super.initState();
    numbers = List<int>.generate(widget.maxNumber, (index) => index + 1);
    _scrollController = FixedExtentScrollController();

    if (widget.controller != null && widget.controller!.text.isNotEmpty) {
      _selectedItemIndex = numbers.indexOf(int.parse(widget.controller!.text));
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.jumpToItem(_selectedItemIndex);
      });
    }
  }

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
              if (widget.controller != null) {
                widget.controller!.text = numbers[index].toString();
              }
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
                if (widget.controller != null) {
                  widget.controller!.text = numbers[index].toString();
                }
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  return ListTile(
                    title: Center(
                      child: Text(
                        '${numbers[index]} ${widget.unit}',
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
