import 'dart:io';
import 'package:aot_characters_app/screens/about_screen.dart';
import 'package:aot_characters_app/screens/description_screen.dart';
import 'package:aot_characters_app/screens/feeback_screen.dart';
import 'package:flutter/material.dart';
import '../utils/my_card.dart';
import '../../models/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isFav = false;
  @override
  Widget build(BuildContext context) {
    final characterList = Character.fetchData();
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey[200],
          elevation: 12.0,
          title: const Text(
            'Characters',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
                fontSize: 23,
                fontFamily: 'BerkshireSwash'),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                tooltip: 'Favourite',
                splashColor: Colors.pink.shade100,
                onPressed: (() => setState(() {
                      _isFav = !_isFav;
                    })),
                icon: Icon(
                  _isFav ? Icons.favorite : Icons.favorite_outline,
                  color: Colors.pinkAccent,
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 300,
                child: DrawerHeader(
                    decoration: const BoxDecoration(color: Colors.pinkAccent),
                    margin: EdgeInsets.zero,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AOT Wiki',
                          style: TextStyle(
                              fontFamily: 'BerkshireSwash',
                              color: Colors.white,
                              fontSize: 35),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                            height: 210,
                            child: Image.asset('assets/images/welcome.png'))
                      ],
                    )),
              ),
              ListTile(
                onTap: (() {
                  Navigator.pop(context);
                  Navigator.pop(context);
                }),
                title: const Text(
                  'Welcome Screen',
                  style: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 22),
                ),
                subtitle: const Text(
                  'Go to Welcome Screen',
                  style: TextStyle(
                    fontFamily: 'BerkshireSwash',
                  ),
                ),
              ),
              ListTile(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const MyFeedback())));
                }),
                title: const Text(
                  'Feedback',
                  style: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 22),
                ),
                subtitle: const Text(
                  'Provide your feedback',
                  style: TextStyle(fontFamily: 'BerkshireSwash'),
                ),
              ),
              ListTile(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const AboutScreen())));
                }),
                title: const Text(
                  'About',
                  style: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 22),
                ),
                subtitle: const Text(
                  'About the app',
                  style: TextStyle(fontFamily: 'BerkshireSwash'),
                ),
              ),
              ListTile(
                onTap: (() {
                  exit(0);
                  // Navigator.pop(context);
                }),
                title: const Text(
                  'Exit',
                  style: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 22),
                ),
                subtitle: const Text(
                  'Exit app',
                  style: TextStyle(fontFamily: 'BerkshireSwash'),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: characterList
              .map((chr) => MyCard(
                  character: chr,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              DescriptionScreen(character: chr))),
                    );
                  }))
              .toList(),
        ));
  }
}

class MyListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  const MyListTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (() {
        onPressed;
      }),
      title: Text(
        title,
        style: const TextStyle(fontFamily: 'BerkshireSwash', fontSize: 25),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(fontFamily: 'BerkshireSwash'),
      ),
    );
  }
}
