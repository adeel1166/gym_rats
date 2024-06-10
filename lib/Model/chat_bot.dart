import 'package:flutter/material.dart';

class ChatBot extends StatelessWidget {
  final VoidCallback onClose;

  const ChatBot({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100, 
      right: 20, 
      child: GestureDetector(
        onTap: onClose,
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Container(
              width: 320,
              height: 415,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(115, 115, 115, 0.9),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.transparent),
              ),
              child: const Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                  Center(
                    child: Text(
                      'ChatBot Content Here',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
