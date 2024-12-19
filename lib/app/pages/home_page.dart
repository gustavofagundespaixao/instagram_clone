import 'package:flutter/material.dart';
import 'package:instagram_clone/app/widgets/app_story_list.dart';
import 'package:instagram_clone/app/widgets/app_feed_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          Badge(
            backgroundColor: Colors.red,
            textColor: Colors.white,
            label: Text('1'),
            child: Icon(Icons.favorite_border),
          ),
          SizedBox(width: 24),
          Badge(
            backgroundColor: Colors.red,
            textColor: Colors.white,
            label: Text('1'),
            child: Icon(Icons.message_outlined),
          ),
          SizedBox(width: 12),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              child: Icon(Icons.image_outlined, size: 14),
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 12,
          children: [
            AppStoryList(),
            Divider(height: 0),
            AppFeedList(),
          ],
        ),
      ),
    );
  }
}
