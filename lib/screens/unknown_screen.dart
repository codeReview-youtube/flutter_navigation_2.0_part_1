import 'package:flutter/material.dart';

class UnknownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Not found'),
      ),
      body: Center(
        child: Text('This screen is not found, try to hit get back first 😁'),
      ),
    );
  }
}
