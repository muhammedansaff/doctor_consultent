import 'package:doctor/refactor/refactor.dart';
import 'package:flutter/material.dart';

class Upcomming extends StatelessWidget {
  final String img, dr, job;

  const Upcomming({
    super.key,
    required this.img,
    required this.dr,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 4, spreadRadius: 2, color: Colors.black12)
          ],
        ),
        child: Column(
          children: [
            ListTile(
              trailing: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(img),
              ),
              title: Text(dr),
              subtitle: Text(
                job,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "${DateTime.now().day.toString()}/${DateTime.now().month.toString()}/${DateTime.now().year.toString()}",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Icon(
                    Icons.access_time,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()} AM",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                ),
                Text("confirmed", style: TextStyle(color: Colors.grey))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  text: "cancel",
                  onTap: () {},
                  width: 150,
                  col: const Color.fromARGB(255, 224, 176, 233),
                ),
                MyButton(
                  text: "Reschedule",
                  onTap: () {},
                  width: 170,
                  col: Theme.of(context).primaryColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
