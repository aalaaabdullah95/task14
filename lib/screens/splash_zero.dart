import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task14/app_router.dart';

class SplashZero extends StatefulWidget {
  const SplashZero({super.key});

  @override
  State<SplashZero> createState() => _SplashZeroState();
}

class _SplashZeroState extends State<SplashZero> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.splachOne);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox.expand(
          child: Image.asset(
            'assets/images/image2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.5), //
          ),
        ),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                color: Colors.red,
                size: 150,
              ),
              Text(
                'Cairo Shop',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
