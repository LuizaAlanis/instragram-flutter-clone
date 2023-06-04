import 'package:flutter/material.dart';

void main() {
  runApp(const InstagramUiClone());
}

class InstagramUiClone extends StatelessWidget {
  const InstagramUiClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: const FeedScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key, required this.title});

  final String title;

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF0F6),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily: 'Billabong',
                      fontSize: 32.0,
                    ),
                  ),
                  Row(children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.live_tv),
                      iconSize: 30.0,
                      onPressed: () => print(''),
                      // alternative -> padding: const EdgeInsets.only(right: 10.0),
                    ),
                    const SizedBox(width: 16.0),
                    SizedBox(
                      width: 35.0,
                      child: IconButton(
                        icon: const Icon(Icons.send),
                        iconSize: 30.0,
                        onPressed: () => print('Direct Messages'),
                      ),
                    ),
                  ])
                ],
              )),
        ],
      ),
    );
  }
}
