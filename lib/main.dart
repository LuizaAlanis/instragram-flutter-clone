import 'package:flutter/material.dart';
import 'package:basics/screen/feed.dart';

void main() {
  runApp(const InstagramUiClone());
}

class InstagramUiClone extends StatelessWidget {
  const InstagramUiClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram UI Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: FeedScreen(),
    );
  }
}