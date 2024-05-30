import 'package:flutter/material.dart';
import '../models/lesson.dart';
import '../drawer/app_drawer.dart';

class LessonScreen extends StatelessWidget {
  final Lesson lesson;

  const LessonScreen({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
      ),
      endDrawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(lesson.content),
      ),
    );
  }
}
