import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String heading;
  const Header({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        heading,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            letterSpacing: 1,
            fontFamily: 'BerkshireSwash'),
      ),
    );
  }
}

class SubHeader extends StatelessWidget {
  final String subHeading;
  const SubHeader({super.key, required this.subHeading});

  @override
  Widget build(BuildContext context) {
    return Text(
      subHeading,
      style: const TextStyle(fontSize: 20, fontFamily: 'BerkshireSwash'),
    );
  }
}
