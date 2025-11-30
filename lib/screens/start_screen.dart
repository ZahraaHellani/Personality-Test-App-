import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onStartTest;

  const StartScreen({super.key, required this.onStartTest});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Discover Your Personality Type!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('💖', style: TextStyle(fontSize: 50)),
              SizedBox(width: 20),
              Text('🗺️', style: TextStyle(fontSize: 50)),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('📅', style: TextStyle(fontSize: 50)),
              SizedBox(width: 20),
              Text('🧠', style: TextStyle(fontSize: 50)),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onStartTest,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: Text('Start Test', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
