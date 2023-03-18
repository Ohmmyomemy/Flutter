import 'package:flutter/material.dart';
import 'package:app/Home.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(117, 53, 16, 75),
        body: Center(
          child: Container(
            width: 700,
            height: 700,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Color.fromARGB(255, 105, 150, 23)]),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/o.jpg",
                        height: 200,
                      ),
                    ),
                  ),
                  const Text(
                    "Thanawath Huayhongthong",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Nickname: Ome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Undergraduate\n3rd years student of ICT\nMahidol University",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Job Interested: Data Analytics",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Algorithm",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.code,
                        color: Color.fromARGB(255, 236, 240, 243),
                        size: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 30,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 102, 219, 240),
                    ),
                    onRatingUpdate: (index) {},
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Logic",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.laptop_chromebook,
                        color: Color.fromARGB(255, 255, 252, 252),
                        size: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 30,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 102, 219, 240),
                    ),
                    onRatingUpdate: (index) {},
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "English",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.language,
                        color: Color.fromARGB(255, 243, 243, 243),
                        size: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 30,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 102, 219, 240),
                    ),
                    onRatingUpdate: newMethod,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.apple_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 30,
                    ),
                  ),
                  /*GestureDetector(
                    onPanUpdate: (dis) {
                      if (dis.delta.dx > 0) {
                      } else if (dis.delta.dx < 0) {}
                    },
                    child: Home(),
                  )*/
                ],
              ),
            ),
          ),
        ));
  }

  void newMethod(index) {}
}
