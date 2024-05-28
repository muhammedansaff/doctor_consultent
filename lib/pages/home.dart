import 'package:doctor/refactor/refactor.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Alex",
                    style: TextStyle(fontSize: 30),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/1.png"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mywid(
                      icon: Icons.add,
                      onTap: () {
                        print("clinik");
                      },
                      heading: "Clinic Visit",
                      subhead: "Make an appointment"),
                ),
                Mywid(
                    icon: Icons.home,
                    onTap: () {
                      print("home");
                    },
                    heading: "Home Visit",
                    subhead: "Call the doctor home"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
