import 'dart:math';

import 'package:doctor/data/person.dart';
import 'package:doctor/refactor/refactor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  final String name;
  final String job;
  final String rating;
  final String img;
  final String jobdisc;

  AppointmentScreen({
    required this.jobdisc,
    required this.img,
    required this.job,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    List<String> ls = ["settings", "about us", "help"];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          // Handle the selected value
                          if (value == "settings") {
                            print("Settings selected");
                            // Navigate to settings or perform other actions
                          } else if (value == "about") {
                            print("About selected");
                            // Navigate to about or perform other actions
                          }
                        },
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        itemBuilder: (BuildContext context) {
                          return ls.map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(img),
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            job,
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(rating)
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyICON(
                            icon: Icon(Icons.call),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MyICON(
                              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                              onPressed: () {})
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "About doctor",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          jobdisc,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "Reviews",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              rating,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Text(
                              " (124)",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Spacer(),
                            Text(
                              "See all",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        Container(
                          height: 125, // Adjust the height as needed
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              Random random = Random();

                              // Get a random index within the range of the pers list
                              int randomIndex = random.nextInt(pers.length);

                              return Container(
                                width: 320, // Adjust the width as needed
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurStyle: BlurStyle.outer,
                                        offset: Offset.zero,
                                        blurRadius: 0.8,
                                        spreadRadius: 1)
                                  ],
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage(pers[randomIndex]),
                                  ),
                                  title: Text(
                                    reviewnames[randomIndex],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize
                                        .min, // Ensure the row takes minimum space
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(rdm[randomIndex]),
                                    ],
                                  ),
                                  subtitle: Text(reviews[randomIndex]),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Location",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Theme.of(context).primaryColor,
                              size: 35,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "New York,Medical College",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "adrres line of medical center",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                            height:
                                80), // Add extra space to avoid bottom overflow
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(left: 8, right: 8, top: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(spreadRadius: 2, blurRadius: 4, color: Colors.black12)
        ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consultation Fees",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Text(
                  "\$ 100",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            MyButton(
              col: Theme.of(context).primaryColor,
              text: "Book Appointment",
              onTap: () {},
              width: MediaQuery.sizeOf(context).width,
            ),
          ],
        ),
      ),
    );
  }
}
