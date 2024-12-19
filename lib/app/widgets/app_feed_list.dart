import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app/models/post_model.dart';
import 'package:instagram_clone/app/widgets/tile/app_post_tile.dart';

class AppFeedList extends StatelessWidget {
  const AppFeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Dio().get('https://jsonplaceholder.typicode.com/posts'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Container();
        } else {
          final items = ((snapshot.data as Response).data as List);

          return Column(
            spacing: 12,
            children: List.generate(
              items.length,
              (index) {
                final value = PostModel.fromMap(items[index]);
                return AppPostTile(value: value);
              },
            ),
          );
        }
      },
    );
  }
}
