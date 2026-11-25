import 'package:flutter/material.dart';
import '../widgets/notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const List<Map<String, String>> _notifications = [
    {'name': 'Cyrus Robles', 'post': 'Kamusta', 'description': 'Liked your post'},
    {'name': 'Roben Juanatas', 'post': 'Holiday kickoff', 'description': 'Commented on your post'},
    {'name': 'Maria Santos', 'post': 'Study group', 'description': 'Shared your post'},
    {'name': 'Juan Dela Cruz', 'post': 'Lab Activity 2', 'description': 'Liked your post'},
    {'name': 'Ana Reyes', 'post': 'Flutter tips', 'description': 'Commented on your post'},
    {'name': 'Paolo Garcia', 'post': 'Weekend plans', 'description': 'Liked your post'},
    {'name': 'Bea Mendoza', 'post': 'Campus life', 'description': 'Shared your post'},
    {'name': 'Miguel Torres', 'post': 'Coding night', 'description': 'Liked your post'},
    {'name': 'Sofia Lim', 'post': 'New phone', 'description': 'Commented on your post'},
    {'name': 'Carlo Ramos', 'post': 'Group project', 'description': 'Liked your post'},
    {'name': 'Isa Navarro', 'post': 'Throwback photo', 'description': 'Shared your post'},
    {'name': 'Leo Bautista', 'post': 'Exam week', 'description': 'Liked your post'},
    {'name': 'Nina Cruz', 'post': 'Coffee run', 'description': 'Commented on your post'},
    {'name': 'Gab Flores', 'post': 'Hackathon', 'description': 'Liked your post'},
    {'name': 'Trixie Aquino', 'post': 'Sunset view', 'description': 'Liked your post'},
    {'name': 'Dan Villanueva', 'post': 'Bug fixed', 'description': 'Commented on your post'},
    {'name': 'Kyla Pascual', 'post': 'Movie night', 'description': 'Shared your post'},
    {'name': 'Rico Castillo', 'post': 'Finals done', 'description': 'Liked your post'},
    {'name': 'Mara Soriano', 'post': 'Beach trip', 'description': 'Commented on your post'},
    {'name': 'Jed Ocampo', 'post': 'Semester break', 'description': 'Liked your post'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _notifications.length,
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final item = _notifications[index];
        return NotificationWidget(
          name: item['name']!,
          post: item['post']!,
          description: item['description']!,
        );
      },
    );
  }
}