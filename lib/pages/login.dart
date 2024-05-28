import 'package:doctor/pages/Signup.dart';
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
                        height: 15,
                      ),
                      // This ensures the button is at the bottom
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child:
                            MyButton(text: "Log In", onTap: () {}, width: 300),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Dont have any account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                ),
                              );
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          )
                        ],
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
