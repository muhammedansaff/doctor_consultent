import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double width;
  final void Function()? onTap;
  const MyButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextfield extends StatefulWidget {
  late bool? passtoggle;
  final bool? obscure;
  final String text;
  final IconData icon;
  final String typee;
  final TextEditingController cnt;
  MyTextfield(
      {super.key,
      required this.cnt,
      required this.typee,
      required this.obscure,
      this.passtoggle,
      required this.text,
      required this.icon});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (widget.typee == "name" && (value!.isEmpty)) {
          return "This field must not be empty";
        }
        if (widget.typee == "Email" &&
            (!value!.contains('@') || value.isEmpty)) {
          return "Enter a valid email";
        }
        if (widget.typee == "pass" && (value!.length < 8 || value.isEmpty)) {
          return "Enter a valid Password";
        }
        if (widget.typee == "phone" && (value!.length != 10 || value.isEmpty)) {
          return "Enter a valid phone";
        }
        return null;
      },
      controller: widget.cnt,
      obscureText: widget.obscure!,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(widget.text),
        prefixIcon: Icon(widget.icon),
        suffixIcon: InkWell(
            onTap: () {
              if (widget.passtoggle == true) {
                setState(() {
                  widget.passtoggle = false;
                });
              }
            },
            onDoubleTap: () {
              if (widget.passtoggle == false) {
                setState(() {
                  widget.passtoggle = false;
                });
              }
            },
            child: widget.obscure!
                ? widget.passtoggle!
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off)
                : const SizedBox()),
      ),
    );
  }
}

class Mywid extends StatelessWidget {
  final void Function()? onTap;
  final String heading;
  final String subhead;
  final IconData icon;
  const Mywid(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.heading,
      required this.subhead});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsets.only(left: 25, right: 20, top: 20, bottom: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 6, spreadRadius: 4)
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                icon,
                size: 35,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              heading,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subhead,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class MyICON extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;
  const MyICON({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white30, shape: BoxShape.circle),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        color: Colors.white,
      ),
    );
  }
}
