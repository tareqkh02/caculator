import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.oppress, required this.title});
  Function oppress;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        oppress();
      },
      style: TextButton.styleFrom(
          fixedSize: const Size(60, 62),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1)),
      child: Text(
        title,
        style: TextStyle(
          color: Color.fromRGBO(56, 185, 255, 1),
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
