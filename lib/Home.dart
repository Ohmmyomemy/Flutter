import 'package:app/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:app/main.dart';

const email = "thanawath.hua@student.mahidol.ac.th";
const phone = "+66 910792395";
const facebook = "Thanawath Huayhongthong";
const location = "Sampran, Nakhonprathom";
const grade = "ไม่บอกหรอก";
const height = "185 cm";
const weight = "77 Kg";
const job = "Data Analytic";
const money = "10,000,000 Dollar";
const factory = "Exxon Mobile";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(160, 170, 179, 54),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/b.jpg'),
          ),
          const Text(
            "Thanawath Huayhongthong",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'font',
            ),
          ),
          const Text(
            'Undergraduate at ICT Faculty in Mahidol University',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
            width: 200,
            child: Divider(
              color: Colors.white,
            ),
          ),
          InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
          InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
          InfoCard(
              text: facebook, icon: Icons.facebook, onPressed: () async {}),
          InfoCard(
              text: location,
              icon: Icons.location_city,
              onPressed: () async {}),
          InfoCard(text: grade, icon: Icons.grade, onPressed: () async {}),
          InfoCard(text: height, icon: Icons.height, onPressed: () async {}),
          InfoCard(
              text: weight, icon: Icons.line_weight, onPressed: () async {}),
          InfoCard(text: job, icon: Icons.man, onPressed: () async {}),
          InfoCard(text: money, icon: Icons.money, onPressed: () async {}),
          InfoCard(text: factory, icon: Icons.factory, onPressed: () async {}),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
              // add your desired action here
            },
            child: const Icon(Icons.back_hand),
          ),
        ],
      )),
    );
  }
}
