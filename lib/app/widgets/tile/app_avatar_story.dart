import 'package:flutter/material.dart';
import 'package:instagram_clone/app/utils/app_random_color.dart';

class AppAvatarStory extends StatelessWidget {
  final String imageUrl;
  final bool addButtonIsActivate;
  final bool miniAvatar;
  const AppAvatarStory({
    super.key,
    this.imageUrl = '',
    this.addButtonIsActivate = false,
    this.miniAvatar = false,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppRandomColor.generate();
    final foregroundColor =
        backgroundColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

    final double storyRadius = 38;
    final double transparentRadius = 36;
    final double imageRadius = 34;

    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.pink,
          radius: miniAvatar ? storyRadius * 0.45 : storyRadius,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                radius:
                    miniAvatar ? transparentRadius * 0.45 : transparentRadius,
              ),
              CircleAvatar(
                backgroundColor: backgroundColor,
                radius: miniAvatar ? imageRadius * 0.45 : imageRadius,
                child: Icon(
                  Icons.image_outlined,
                  color: foregroundColor,
                  size: miniAvatar ? imageRadius * 0.45 : imageRadius,
                ),
              ),
            ],
          ),
        ),
        if (addButtonIsActivate)
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              radius: 12,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 10,
                child: Icon(
                  Icons.add,
                  size: 16,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
