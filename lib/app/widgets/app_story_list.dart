import 'package:flutter/material.dart';
import 'package:instagram_clone/app/widgets/tile/app_avatar_story.dart';

class AppStoryList extends StatelessWidget {
  const AppStoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 12,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: AppAvatarStory(addButtonIsActivate: true),
          ),
          ...List.generate(
            50,
            (index) {
              return Padding(
                padding:
                    index <= 49 ? EdgeInsets.zero : EdgeInsets.only(right: 12),
                child: AppAvatarStory(),
              );
            },
          )
        ],
      ),
    );
  }
}
