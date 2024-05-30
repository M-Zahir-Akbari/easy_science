import 'package:flutter/material.dart';
import 'lesson_screen.dart';
import '../models/lesson.dart';
import '../drawer/app_drawer.dart';

class SubjectScreen extends StatelessWidget {
  final String subject;

  const SubjectScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final List<Lesson> lessons = _getLessonsForSubject(subject);

    return Scaffold(
      appBar: AppBar(
        title: Text('$subject Lessons'),
      ),
      endDrawer: const AppDrawer(), // Include the drawer here
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lessons[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LessonScreen(lesson: lessons[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }

  List<Lesson> _getLessonsForSubject(String subject) {
    switch (subject) {
      case 'Math':
        return mathLessons;
      case 'Physics':
        return physicsLessons;
      case 'Chemistry':
        return chemistryLessons;
      default:
        return [];
    }
  }
}
