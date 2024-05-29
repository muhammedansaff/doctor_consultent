import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  final String name;
  final String job;
  final String rating;
  final String img;

  AppointmentScreen({
    required this.img,
    required this.job,
    required this.name,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    List<String> ls = [
      "settings",
      "about",
    ];
    return Scaffold(
      backgroundColor: Color(0XFF7165D6),
      body: Column(
        children: [
          SizedBox(
            height: 40,
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

                //
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
                Text(
                  job,
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(rating)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
