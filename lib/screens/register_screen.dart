import 'package:flutter/material.dart';
import 'package:task14/screens/wigeget/custom_button.dart';
import 'package:task14/screens/wigeget/custom_textfeild.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Column(
            children: [
              Image.asset(
                'assets/images/freed.png',
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomTextfeild(
                labelText: 'Enter name',
                prefixIcon: Icon(Icons.person),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextfeild(
                labelText: 'Enter Email',
                prefixIcon: Icon(Icons.email),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextfeild(
                labelText: 'Enter phone',
                prefixIcon: Icon(Icons.phone),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextfeild(
                labelText: 'Enter Password',
                prefixIcon: Icon(Icons.lock),
                suffixxIcon: Icon(
                  Icons.visibility_off,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextfeild(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
                suffixxIcon: Icon(
                  Icons.visibility_off,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Custom_button(
                  textColor: Colors.white,
                  backGroundColor: Colors.red,
                  width: double.infinity,
                  heigh: 50,
                  text: 'Create Account'),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
