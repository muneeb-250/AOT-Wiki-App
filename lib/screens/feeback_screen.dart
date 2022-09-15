// import 'package:flutter/material.dart';

// class MyFeedback extends StatelessWidget {
//   const MyFeedback({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.pinkAccent,
//         elevation: 0.0,
//         title: const Text(
//           'Feedback',
//           style: TextStyle(
//               color: Colors.white,
//               letterSpacing: 2,
//               fontSize: 28,
//               fontFamily: 'BerkshireSwash'),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: const [
//           Text('Your opinion matter to Us'),

//           //  5 stars

//           // Feeback TextField
//         ],
//       ),
//     );
//   }
// }

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyFeedback extends StatelessWidget {
  const MyFeedback({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          title: const Text(
            "Feedback",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 26,
              fontFamily: 'BerkshireSwash',
              color: Color(0xffffffff),
            ),
          ),
          leading: IconButton(
            onPressed: (() => Navigator.pop(context)),
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFFFFFFFF),
              size: 24,
            ),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 50,
              ),
              const Text(
                "Your feedback matter to us",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 28,
                  fontFamily: 'BerkshireSwash',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                padding: EdgeInsets.zero,
                width: screenWidth * 0.8,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                ),
                child: TextField(
                  controller: TextEditingController(),
                  textAlign: TextAlign.start,
                  cursorColor: Colors.pinkAccent,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    fontFamily: 'BerkshireSwash',
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Colors.pinkAccent, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    hintText: "Your name",
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      fontFamily: 'BerkshireSwash',
                      color: Color(0xff000000),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    isDense: false,
                    contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                padding: EdgeInsets.zero,
                height: 80,
                width: screenWidth * 0.8,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                ),
                child: TextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  cursorColor: Colors.pinkAccent,
                  textAlign: TextAlign.start,
                  maxLines: 3,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    fontFamily: 'BerkshireSwash',
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Colors.pinkAccent, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    hintText: "Your message",
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      fontFamily: 'BerkshireSwash',
                      color: Color(0xff000000),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    isDense: false,
                    contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                  ),
                ),
              ),
              const Text(
                "How did we do?",
                textAlign: TextAlign.left,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 28,
                  fontFamily: 'BerkshireSwash',
                  color: Color(0xffffc107),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RatingBar.builder(
                initialRating: 2.5,
                unratedColor: const Color(0xff9e9e9e),
                itemBuilder: (context, index) =>
                    const Icon(Icons.star, color: Color(0xffffc107)),
                itemCount: 5,
                itemSize: 48,
                direction: Axis.horizontal,
                allowHalfRating: true,
                onRatingUpdate: (value) {},
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  final snackBar = SnackBar(
                    content: const Text('Thanks for your feedback. Enjoy!'),
                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: (() {}),
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                color: const Color(0xffffffff),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: Colors.pinkAccent, width: 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                textColor: const Color(0xff000000),
                height: 50,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                // minWidth: 140,
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'BerkshireSwash'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
