import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class Post {
  const Post({
    required this.userName,
    required this.date,
    required this.content,
    required this.numOfLikes,
    required this.hasImage,
    this.imagePath,
    this.profileImage = 'assets/images/capt.jpg',
  });

  final String userName;
  final String date;
  final String content;
  final int numOfLikes;
  final bool hasImage;
  final String? imagePath;
  final String profileImage;
}

const List<Post> posts = [
  Post(
    userName: 'Cyrus Robles',
    date: 'October 11',
    content: 'Kamusta',
    numOfLikes: 100,
    hasImage: false,
  ),
  Post(
    userName: 'Roben Juanatas',
    date: 'December 2',
    content: 'Kicking off the holiday season with ICpEP-NCR!',
    numOfLikes: 250,
    hasImage: true,
  ),
  Post(
    userName: 'Steve Rogers',
    date: 'December 5',
    content: 'I can do this all day! #AvengersAssemble',
    numOfLikes: 1825,
    hasImage: true,
    imagePath: 'assets/images/capt.jpg',
  ),
  Post(
    userName: 'Tony Stark',
    date: 'December 1, 2023',
    content: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
    numOfLikes: 3000,
    hasImage: true,
    imagePath: 'assets/images/iron_man.jpg',
  ),
  Post(
    userName: 'Maria Santos',
    date: 'November 28',
    content: 'Study group tonight, who is in?',
    numOfLikes: 42,
    hasImage: false,
  ),
  Post(
    userName: 'Juan Dela Cruz',
    date: 'November 20',
    content: 'Finally finished Lab Activity 2!',
    numOfLikes: 310,
    hasImage: true,
  ),
  Post(
    userName: 'Ana Reyes',
    date: 'November 15',
    content: 'Flutter tip of the day: use const wherever you can.',
    numOfLikes: 87,
    hasImage: false,
  ),
  Post(
    userName: 'Paolo Garcia',
    date: 'November 9',
    content: 'Weekend plans: sleep, code, repeat.',
    numOfLikes: 156,
    hasImage: true,
    imagePath: 'assets/images/iron_man.jpg',
  ),
  Post(
    userName: 'Bea Mendoza',
    date: 'October 30',
    content: 'Campus life is better with friends.',
    numOfLikes: 73,
    hasImage: false,
  ),
  Post(
    userName: 'Miguel Torres',
    date: 'October 22',
    content: 'Coding night fueled by coffee.',
    numOfLikes: 205,
    hasImage: true,
  ),
];

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return NewsfeedCard(
          userName: post.userName,
          date: post.date,
          postContent: post.content,
          numOfLikes: post.numOfLikes,
          hasImage: post.hasImage,
          imagePath: post.imagePath,
          profileImage: post.profileImage,
        );
      },
    );
  }
}