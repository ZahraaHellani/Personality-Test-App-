import 'package:personality_test_app/models/answers.dart';
import 'package:personality_test_app/models/personality.dart';
import 'package:personality_test_app/models/questions.dart';

final List<Question> questions = [
  Question(
    question: 'How do you approach a difficult decision?',
    answers: [
      Answer(
        answer: 'Analyze all options logically',
        personalityType: Personalities.thinker,
      ),
      Answer(
        answer: 'Go with what feels right emotionally',
        personalityType: Personalities.feeler,
      ),
      Answer(
        answer: 'Make a checklist and plan it out',
        personalityType: Personalities.planner,
      ),
      Answer(
        answer: 'Take a leap and deal with results later',
        personalityType: Personalities.adventurer,
      ),
    ],
  ),
  Question(
    question: 'What excites you the most?',
    answers: [
      Answer(
        answer: 'Solving complex problems',
        personalityType: Personalities.thinker,
      ),
      Answer(
        answer: 'Connecting deeply with others',
        personalityType: Personalities.feeler,
      ),
      Answer(
        answer: 'Creating a clear path to your goals',
        personalityType: Personalities.planner,
      ),
      Answer(
        answer: 'Exploring something new',
        personalityType: Personalities.adventurer,
      ),
    ],
  ),
  Question(
    question: 'Which best describes your work style?',
    answers: [
      Answer(
        answer: 'Detail-focused and logical',
        personalityType: Personalities.thinker,
      ),
      Answer(
        answer: 'People-centered and intuitive',
        personalityType: Personalities.feeler,
      ),
      Answer(
        answer: 'Organized and systematic',
        personalityType: Personalities.planner,
      ),
      Answer(
        answer: 'Flexible and spontaneous',
        personalityType: Personalities.adventurer,
      ),
    ],
  ),
  Question(
    question: 'How do you recharge after a long day?',
    answers: [
      Answer(
        answer: 'Quiet reflection or reading',
        personalityType: Personalities.thinker,
      ),
      Answer(
        answer: 'Spending time with close friends',
        personalityType: Personalities.feeler,
      ),
      Answer(
        answer: 'Planning tomorrow\'s tasks',
        personalityType: Personalities.planner,
      ),
      Answer(
        answer: 'Doing something active or exciting',
        personalityType: Personalities.adventurer,
      ),
    ],
  ),
  Question(
    question: 'You\'re most comfortable when...',
    answers: [
      Answer(
        answer: 'Things make logical sense',
        personalityType: Personalities.thinker,
      ),
      Answer(
        answer: 'Everyone is getting along',
        personalityType: Personalities.feeler,
      ),
      Answer(
        answer: 'There\'s a clear structure',
        personalityType: Personalities.planner,
      ),
      Answer(
        answer: 'You\'re free to try new things',
        personalityType: Personalities.adventurer,
      ),
    ],
  ),
  Question(
    question: 'Your biggest strength is...',
    answers: [
      Answer(
        answer: 'Thinking critically',
        personalityType: Personalities.thinker,
      ),
      Answer(
        answer: 'Empathizing with others',
        personalityType: Personalities.feeler,
      ),
      Answer(
        answer: 'Staying organized',
        personalityType: Personalities.planner,
      ),
      Answer(
        answer: 'Being adventurous',
        personalityType: Personalities.adventurer,
      ),
    ],
  ),
];
