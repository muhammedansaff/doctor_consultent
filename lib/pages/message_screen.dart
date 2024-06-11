import 'dart:math';

import 'package:doctor/data/chats.dart';
import 'package:doctor/data/doctors.dart';
import 'package:flutter/material.dart';

class Message_Screen extends StatelessWidget {
  const Message_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Messages",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4, spreadRadius: 2, color: Colors.black12)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  hintText: "Search...",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: ListView.builder(
              itemCount: img.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(img[index]),
                        radius: 40,
                      ),
                      Positioned(
                        top: 2,
                        right: 5,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text(
              "chats",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 500,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  Random random = Random();

                  // Get a random index within the range of the pers list
                  int randomIndex = random.nextInt(img.length);

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(img[randomIndex]),
                        ),
                        title: Text(name[randomIndex]),
                        subtitle: Text(
                          chats[randomIndex],
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Text(
                          doctime[randomIndex],
                        )),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
