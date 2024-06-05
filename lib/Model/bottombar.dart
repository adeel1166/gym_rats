import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Main content goes here
            Center(child: Text('Main Content')),
            // Positioned Bottom Bar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomBottomBar(
                onClick: () {
                  // Scroll to "Rectangle 439"
                  print('Clicked: Scroll to "Rectangle 439"');
                },
                onDrag: () {
                  // Handle drag interaction
                  print('Dragged: Navigate to "None" with Smart animate');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  final VoidCallback onClick;
  final VoidCallback onDrag;

  const CustomBottomBar({required this.onClick, required this.onDrag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      onPanUpdate: (details) {
        if (details.delta.dy != 0) {
          onDrag();
        }
      },
      child: Opacity(
        opacity: 0.0,
        child: Container(
          width: 430,
          height: 67,
          color: Colors.transparent,
          child: Center(
            child: Text('Bottom Bar'),
          ),
        ),
      ),
    );
  }
}