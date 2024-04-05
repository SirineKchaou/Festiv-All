import 'package:hub/app/configs/colors.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildCard(Icons.airplane_ticket, 'Ticket', '/route1'),
        buildCard(Icons.account_box_rounded, 'Admin', '/route3'),
        buildCard(Icons.person, 'Profile', '/route2'),
      ],
    );
  }

  Widget buildCard(IconData icon, String label, String route) {
    return Card(
      child: InkWell(
        onTap: () {
          // Add the action to perform when clicking on the card
          Navigator.pushNamed(context, route);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              SizedBox(height: 8),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
