import 'package:flutter/material.dart';
import '../utils/my_headers.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'About',
            style: TextStyle(fontFamily: 'BerkshireSwash', fontSize: 22),
          )),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: Center(child: Image.asset('assets/images/welcome.png'))),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Header(heading: 'About'),
                  SubHeader(
                      subHeading:
                          'The AOT Wiki is a minial app containing the details of the few most important characters appeared in the award winning Series Attack on Titan, masterpiece created by Hajime Isayama.'),
                  Header(heading: 'Version'),
                  SubHeader(subHeading: '1.0.1'),
                  Header(heading: 'Location'),
                  SubHeader(
                      subHeading: 'North Nazimabad, 74600, Karachi, Pakistan'),
                  Header(heading: 'Contact'),
                  SubHeader(subHeading: 'muneeb1590@gmail.com'),
                ]),
          ),
        ]),
      ),
    );
  }
}
