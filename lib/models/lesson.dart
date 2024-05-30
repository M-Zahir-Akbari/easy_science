class Lesson {
  final String subject;
  final String title;
  final String content;

  Lesson({required this.subject, required this.title, required this.content});
}

List<Lesson> mathLessons = [
  Lesson(
      subject: 'Math',
      title: 'Lesson 1: Algebra',
      content: 'Content of Algebra'),
  Lesson(
      subject: 'Math',
      title: 'Lesson 2: Geometry',
      content: 'Content of Geometry'),
];

List<Lesson> physicsLessons = [
  Lesson(
      subject: 'Physics',
      title: 'Lesson 1: Mechanics',
      content: 'Content of Mechanics'),
  Lesson(
      subject: 'Physics',
      title: 'Lesson 2: Thermodynamics',
      content: 'Content of Thermodynamics'),
];

List<Lesson> chemistryLessons = [
  Lesson(
      subject: 'Chemistry',
      title: 'Lesson 1: Atomic Structure',
      content: 'Content of Atomic Structure'),
  Lesson(
      subject: 'Chemistry',
      title: 'Lesson 2: Chemical Bonds',
      content: 'Content of Chemical Bonds'),
];
