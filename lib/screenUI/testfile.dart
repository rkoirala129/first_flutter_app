import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center(
        child: Container(
          child: Text("Inside the body"),
        ),
      ),
    );
  }
}
