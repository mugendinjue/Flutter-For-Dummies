import "package:flutter/material.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 69, 97),
      appBar: AppBar(
        title: const Center(child: Text("S E T T I N G S")),
        backgroundColor: const Color.fromARGB(255, 199, 176, 176),
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
    );
  }
}
