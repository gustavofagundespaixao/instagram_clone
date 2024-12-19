import 'package:flutter/material.dart';
import 'package:instagram_clone/app/widgets/app_feed_list.dart';
import 'package:instagram_clone/app/widgets/app_story_list.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 12,
        children: [
          AppStoryList(),
          Divider(height: 0),
          AppFeedList(),
        ],
      ),
    );
  }
}
