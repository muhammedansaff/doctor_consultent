import 'package:doctor/refactor/refactor.dart';
import 'package:doctor/refactor/upcoming.dart';
import 'package:flutter/material.dart';

class schedule_screen extends StatefulWidget {
  const schedule_screen({super.key});

  @override
  State<schedule_screen> createState() => _schedule_screenState();
}

int _buttonindex = 0;
final _schedulewidgets = [
  SingleChildScrollView(
    child: Container(
      width: 360,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 20,
          ),
          Upcomming(
            img: "assets/doctors/doctor2.png",
            dr: "Dr.Samuel",
            job: "Therapist",
          ),
          Upcomming(
              img: "assets/doctors/doctor4.png",
              dr: "Dr.H",
              job: "Hematologist"),
          Upcomming(
              img: "assets/doctors/doctor7.png",
              dr: "Dr.Samuel",
              job: "Neurologist"),
        ],
      ),
    ),
  ),
  Container(),
  Container()
];

class _schedule_screenState extends State<schedule_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Schedule",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MySchedule(
                    text: "upcoming",
                    onTap: () {
                      ;
                      setState(() {
                        _buttonindex = 0;
                      });
                    },
                    col: _buttonindex == 0
                        ? Theme.of(context).primaryColor
                        : Colors.transparent),
                SizedBox(
                  width: 10,
                ),
                MySchedule(
                    text: "completed",
                    onTap: () {
                      ;
                      setState(() {
                        _buttonindex = 1;
                      });
                    },
                    col: _buttonindex == 1
                        ? Theme.of(context).primaryColor
                        : Colors.transparent),
                SizedBox(
                  width: 10,
                ),
                MySchedule(
                    text: "Cancelled",
                    onTap: () {
                      ;
                      setState(() {
                        _buttonindex = 2;
                      });
                    },
                    col: _buttonindex == 2
                        ? Theme.of(context).primaryColor
                        : Colors.transparent),
              ],
            ),
            _schedulewidgets[_buttonindex]
          ],
        ),
      ),
    );
  }
}
