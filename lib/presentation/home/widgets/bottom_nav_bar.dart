import 'package:flutter/material.dart';
import 'package:score_tracker/core/themes/themes.dart';

class AppBottomNavBar extends StatelessWidget {
  final Function(int index) onDestinationSelected;
  final int selectedIndex;
  const AppBottomNavBar(
      {super.key,
      required this.onDestinationSelected,
      required this.selectedIndex});

  final destinations = const [
    NavigationDestination(icon: Icon(Icons.edit_note_sharp), label: "Matches"),
    NavigationDestination(icon: Icon(Icons.category_outlined), label: "Games"),
    NavigationDestination(icon: Icon(Icons.groups), label: "Players"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(64),
            blurRadius: 4,
          ),
        ],
      ),
      child: NavigationBar(
        destinations: destinations,
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
