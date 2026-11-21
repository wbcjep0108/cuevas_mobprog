import 'package:cuevas_mobprog/widgets/newsfeed_card.dart';
import 'package:flutter/material.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'I can do this all day! #AvengersAssemble',
          date: '2 hours ago',
          numOfLikes: 1825,
          profileImage: 'assets/images/capt.jpg',
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
          date: 'December 1, 2023',
          numOfLikes: 3000,
          hasImage: true,
        ),
      ],
    );
  }
}