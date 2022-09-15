import 'package:flutter/material.dart';
import '../../models/data.dart';

class MyCard extends StatelessWidget {
  final Character character;
  final VoidCallback onPressed;

  const MyCard({Key? key, required this.character, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        height: 230,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: character.color,
                    borderRadius: BorderRadius.circular(10.0)),
                constraints:
                    const BoxConstraints(maxWidth: 280, maxHeight: 180),
                child: Center(
                  child: Text(
                    character.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BerkshireSwash',
                      color: Colors.white,
                      fontSize: 42,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 25.0,
              left: -20,
              child: Hero(
                transitionOnUserGestures: true,
                tag: character.name,
                child: Image.asset(
                  character.imagePath,
                  height: 150.0,
                  width: 150.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
