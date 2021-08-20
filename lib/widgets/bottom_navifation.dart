import 'package:flutter/material.dart';

class BottonNavigator extends StatelessWidget {
  final bool isActive;
  const BottonNavigator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Icon(Icons.dashboard, color: isActive ? Colors.blue : Colors.grey),
    );
  }
}
