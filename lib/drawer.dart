import 'package:flutter/material.dart';
class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const DrawerHeader(
          child: Text("Meu menu"),
        ),
        ListTile(
          onTap: () {},
          title: const Text("Item 1"),
        ),
        ListTile(
          onTap: () {},
          title: const Text("Item 2"),
        )
      ],
    );
  }
}