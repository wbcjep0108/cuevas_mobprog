import 'package:flutter/material.dart';
import '../constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: fbLightPrimary,
            child: Icon(Icons.person, size: 60, color: fbDarkPrimary),
          ),
          SizedBox(height: 12),
          Text(
            'Cuevas',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text('Mobile Programming Student'),
        ],
      ),
    );
  }
}