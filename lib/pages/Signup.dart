import 'package:doctor/pages/login.dart';
import 'package:doctor/refactor/refactor.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Dispose the controllers when the widget is disposed
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/doctors.png"),
              Padding(
                padding: const EdgeInsets.all(15),
                child: MyTextfield(
                  cnt: fullNameController,
                  typee: "name",
                  obscure: false,
                  text: "Full Name",
                  icon: Icons.person,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: MyTextfield(
                  cnt: emailController,
                  typee: "Email",
                  obscure: false,
                  text: "Email Address",
                  icon: Icons.email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: MyTextfield(
                  cnt: phoneController,
                  typee: "phone",
                  obscure: false,
                  text: "Phone Number",
                  icon: Icons.call,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: MyTextfield(
                  cnt: passwordController,
                  typee: "pass",
                  obscure: true,
                  text: "Enter Password",
                  icon: Icons.lock,
                  passtoggle: true,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyButton(col:  Theme.of(context).primaryColor,
                  text: "Create Account",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      // Navigate to login page only if form is valid
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Please fill all fields correctly')),
                      );
                    }
                  },
                  width: 380,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
