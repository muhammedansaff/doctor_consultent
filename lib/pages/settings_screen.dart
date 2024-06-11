import 'package:doctor/refactor/refactor.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("assets/images/shamil.jpg"),
              ),
              title: Text(
                "Shaamilshaan",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              subtitle: Text(
                "Profile",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyListTile(
                iconcolor: Colors.blue,
                backgroundColor: Colors.blue[100],
                icon: Icons.person_outline_outlined,
                text: "Profile"),
            MyListTile(
                iconcolor: Colors.purple,
                backgroundColor: Colors.purple[100],
                icon: Icons.notifications_none_outlined,
                text: "Notifications"),
            MyListTile(
                iconcolor: Colors.deepPurple,
                backgroundColor: Colors.blueGrey[100],
                icon: Icons.privacy_tip_outlined,
                text: "Privacy"),
            MyListTile(
                iconcolor: Colors.indigo,
                backgroundColor: Colors.indigo[100],
                icon: Icons.settings,
                text: "General"),
            MyListTile(
                iconcolor: Colors.orange,
                backgroundColor: Colors.orangeAccent[100],
                icon: Icons.error_outline_outlined,
                text: "Profile"),
            MyListTile(
                iconcolor: Colors.red,
                backgroundColor: Colors.redAccent[100],
                icon: Icons.logout,
                text: "Profile"),
          ],
        ),
      ),
    );
  }
}
