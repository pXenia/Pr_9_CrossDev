import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Desserts extends StatelessWidget {
  const Desserts({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Перекусы')),
      body: Center(
        child: Column(
            children: [
              Image.asset(
                "assets/desserts.jpg",
                fit: BoxFit.scaleDown,
              ),
              ElevatedButton(
                onPressed: () => context.go('/'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown.shade50,
                ),
                child: const Text(
                  "Назад",
                  style: TextStyle(fontSize: 16, color: Colors.brown),
                ),
              ),
            ]

        ),
      ),
    );
  }
}