import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset("images/freed.png"),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Number",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.numbers),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(55),
                        backgroundColor: Color(0xFFeF6969),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an Account?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xFFEf6969),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
