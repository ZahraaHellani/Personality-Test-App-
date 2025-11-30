import 'package:flutter/material.dart';
import 'models/personality.dart';
import 'data/questions.dart';
import 'screens/start_screen.dart';
import 'screens/question_screen.dart';
import 'screens/result_screen.dart';

void main() => runApp(PersonalityTestApp());

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  _PersonalityTestAppState createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  Personalities? _result;
  int? _currentQuestionIndex;
  final Map<Personalities, int> _scores = {
    Personalities.thinker: 0,
    Personalities.feeler: 0,
    Personalities.planner: 0,
    Personalities.adventurer: 0,
  };

  void _startTest() {
    setState(() {
      _currentQuestionIndex = 0;
      _result = null;
      _scores.forEach((key, value) => _scores[key] = 0);
    });
  }

  void _handleAnswer(Personalities personality) {
    setState(() {
      _scores[personality] = _scores[personality]! + 1;
      if (_currentQuestionIndex! < questions.length - 1) {
        _currentQuestionIndex = _currentQuestionIndex! + 1;
      } else {
        _calculateResult();
        _currentQuestionIndex = null;
      }
    });
  }

  void _calculateResult() {
    int highestScore = 0;
    _scores.forEach((personality, score) {
      if (score > highestScore) {
        highestScore = score;
        _result = personality;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 42, 50, 172),
      ),
      home: Scaffold(
        body: Center(
          child:
              _result != null
                  ? ResultScreen(result: _result!, onRestartTest: _startTest)
                  : _currentQuestionIndex != null
                  ? QuestionScreen(
                    question: questions[_currentQuestionIndex!],
                    onAnswerSelected: _handleAnswer,
                  )
                  : StartScreen(onStartTest: _startTest),
        ),
      ),
    );
  }
}
