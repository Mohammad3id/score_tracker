import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(50, (index) => index).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mathces"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmarks_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text("$index");
        },
        itemCount: items.length,
      ),
    );
  }
}
