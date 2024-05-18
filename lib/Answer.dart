import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Отзыв отправлен')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Спасибо за отзыв!",
                style: TextStyle(fontSize: 40, color: Colors.brown),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
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