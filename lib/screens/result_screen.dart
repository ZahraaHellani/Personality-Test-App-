import 'package:flutter/material.dart';
import 'package:personality_test_app/models/personality.dart';

class ResultScreen extends StatelessWidget {
  final Personalities result;
  final VoidCallback onRestartTest;

  const ResultScreen({
    super.key,
    required this.result,
    required this.onRestartTest,
  });

  String _getPersonalityTitle() {
    return personalityTitles[result]!;
  }

  String _getPersonalityDescription() {
    switch (result) {
      case Personalities.thinker:
        return personalityDescriptions[Personalities.thinker]!;
      case Personalities.feeler:
        return personalityDescriptions[Personalities.feeler]!;
      case Personalities.planner:
        return personalityDescriptions[Personalities.planner]!;
      case Personalities.adventurer:
        return personalityDescriptions[Personalities.adventurer]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your are an ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Text(
              _getPersonalityTitle(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              _getPersonalityDescription(),
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: onRestartTest,
              child: Text(
                'Take the Test Again',
                style: TextStyle(fontSize: 16,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
