import 'package:flutter/material.dart';
import '../models/data.dart';
import '../utils/my_headers.dart';

class DescriptionScreen extends StatelessWidget {
  final Character character;
  const DescriptionScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: character.color,
        elevation: 0.0,
        title: Text(
          character.fullName,
          style: const TextStyle(
              color: Colors.white,
              // letterSpacing: 2,
              fontSize: 28,
              fontFamily: 'BerkshireSwash'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                color: character.color,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Center(
                child: Hero(
                  tag: character.name,
                  child: Image.asset(character.imagePath),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[100],
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(heading: 'Full name'),
                  SubHeader(subHeading: character.fullName),
                  const Header(heading: 'Age'),
                  SubHeader(subHeading: character.age.toString()),
                  const Header(heading: 'Birhtday'),
                  SubHeader(subHeading: character.birthday),
                  const Header(heading: 'Zodiac Sign'),
                  SubHeader(subHeading: character.zodiacSign),
                  const Header(heading: 'Residence'),
                  SubHeader(subHeading: character.residence),
                  const Header(heading: 'Occupation'),
                  SubHeader(subHeading: character.occupation),
                  const Header(heading: 'Description'),
                  SubHeader(subHeading: character.description),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
