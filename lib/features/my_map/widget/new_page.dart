import 'package:flutter/material.dart';
class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('title'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(),
      ),
    );
  }
}
