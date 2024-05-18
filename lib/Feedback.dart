import 'dart:math';

import 'package:flutter/material.dart';

import 'Answer.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Оценка сервиса')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Оцените сервис",
              style: TextStyle(fontSize: 28, color: Colors.brown),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Ваша оценка",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                sendFeedback().then((success) {
                  if (success) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Answer()),
                    );
                  }
                }
                ).catchError((error) {
                  Navigator.pop(context);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown.shade50,
              ),
              child: const Text(
                "Оценить",
                style: TextStyle(fontSize: 16, color: Colors.brown),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> sendFeedback() {
    final randomNumber = Random().nextDouble();
    if (randomNumber <= 0.5) {
      return Future.error("Ошибка при отправке отзыва");
    } else {
      return Future.value(true);
    }
  }
}