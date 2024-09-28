import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task14/app_router.dart';
import 'package:task14/screens/wigeget/custom_button.dart';
import 'package:task14/screens/wigeget/custom_textfeild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 100),
          child: Column(
            children: [
              Image.asset(
                'assets/images/freed.png',
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomTextfeild(
                labelText: 'Enter Email',
                prefixIcon: Icon(Icons.email),
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
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 250),
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
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
                  text: 'Login'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont\' have an account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Custom_button(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.register);
                      },
                      textColor: Colors.red,
                      width: 100,
                      heigh: 100,
                      text: 'Sign up',
                      backGroundColor: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
