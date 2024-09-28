import 'package:flutter/material.dart';
import 'package:task14/app_router.dart';

void main() {
  runApp(const CairoShop());
}

class CairoShop extends StatelessWidget {
  const CairoShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routers,
    );
  }
}
