import "package:flutter/material.dart";

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  final TextEditingController _userNameController = TextEditingController();
  String _greetingMessage = "";
  void _greetUser() {
    String name = _userNameController.text;
    setState(() {
      _greetingMessage = "Hello $name !!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_greetingMessage),
            ),
            TextField(
              controller: _userNameController,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "Enter your name..."),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: _greetUser,
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.green),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
