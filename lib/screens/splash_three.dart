import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task14/app_router.dart';
import 'package:task14/screens/wigeget/custom_button.dart';

class SplashThree extends StatelessWidget {
  const SplashThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/splash2.png',
                      height: 120,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Free Delivery',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'A simple dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                      maxLines: 4,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Custom_button(
                      textColor: Colors.white,
                      backGroundColor: Colors.red,
                      width: 400,
                      heigh: 50,
                      text: 'Let\' go shop ',
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.login);
                      },
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(0, 1),
                  _buildDot(2, 1),
                  _buildDot(1, 1),
                ],
              ),
            ),
            Positioned(
              bottom: 33,
              left: 20,
              child: TextButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(int index, int currentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: currentPage == index ? 12 : 8,
      height: currentPage == index ? 12 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == index ? Colors.red : Colors.grey,
      ),
    );
  }
}
