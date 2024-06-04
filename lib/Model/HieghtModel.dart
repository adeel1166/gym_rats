import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';

class HeightModel extends StatefulWidget {
  @override
  _HeightModelState createState() => _HeightModelState();
}

class _HeightModelState extends State<HeightModel> {
  final List<String> heights = List<String>.generate(400, (index) => '${index + 1} cm');
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
            itemCount: heights.length,
            onItemTapCallback: (index) {
              setState(() {
                _selectedItemIndex = index;
              });
              print('Selected height: ${heights[index]}');
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
                        heights[index],
                        style: TextStyle(
                          fontSize: 24,
                          color: _selectedItemIndex == index ? Colors.white : Colors.white,
                        ),
                      ),
                    ),
                  );
                },
                childCount: heights.length,
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
