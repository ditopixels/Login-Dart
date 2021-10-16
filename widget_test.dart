import 'package:flutter/material.dart';

import 'LoginForm.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juan Diego - Social Network'),
      ),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}


