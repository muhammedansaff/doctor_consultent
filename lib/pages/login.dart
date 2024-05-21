import 'package:doctor/refactor/refactor.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset("assets/images/doctors.png"),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: MyTextfield(
                            obscure: false,
                            text: "Enter Username",
                            icon: Icons.person),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: MyTextfield(
                            obscure: true,
                            passtoggle: true,
                            text: "Enter your password",
                            icon: Icons.lock),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // This ensures the button is at the bottom
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            MyButton(text: "Log In", onTap: () {}, width: 360),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
