import 'package:flutter/material.dart';

class ContentError extends StatelessWidget {
  final String message;
  const ContentError({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).brightness == Brightness.light
        ? Colors.black26
        : Colors.white24;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.nearby_error,
            color: color,
            size: 200,
          ),
          Text(
            message,
            style: TextStyle(
              color: color,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
