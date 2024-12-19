import 'package:flutter/material.dart';
import 'package:instagram_clone/app/models/post_model.dart';
import 'package:instagram_clone/app/utils/app_random_color.dart';
import 'package:instagram_clone/app/widgets/tile/app_avatar_story.dart';

class AppPostTile extends StatelessWidget {
  final PostModel value;
  const AppPostTile({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppRandomColor.generate();
    final foregroundColor =
        backgroundColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 6,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 6,
            left: 12,
            right: 12,
          ),
          child: Row(
            spacing: 6,
            children: [
              AppAvatarStory(miniAvatar: true),
              Text('username${value.userId}'),
              Expanded(child: SizedBox()),
              Icon(Icons.more_vert, size: 20),
            ],
          ),
        ),
        Container(
          color: backgroundColor,
          height: 400,
          width: double.infinity,
          child: Icon(
            Icons.image_outlined,
            color: foregroundColor,
            size: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            spacing: 12,
            children: [
              Icon(Icons.favorite_border),
              Row(
                spacing: 2,
                children: [
                  Icon(Icons.mode_comment_outlined),
                  Text('10'),
                ],
              ),
              Icon(Icons.send_outlined),
              Expanded(child: Container()),
              Icon(Icons.bookmark_border_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('Curtido por username${value.userId} e outras pesssoas'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('username${value.userId} ${value.title}'),
        )
      ],
    );
  }
}
