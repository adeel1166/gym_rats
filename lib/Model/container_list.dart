import 'package:flutter/material.dart';

class ContainerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          width: 173,
          height: 173,
          margin: EdgeInsets.all(8.0),
          color: Colors.blue[(index + 1) * 100],
          child: Center(
            child: Text(
              'Container ${index + 1}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}