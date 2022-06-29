import 'package:flutter/material.dart';

class ScaffoldTextWidget extends StatelessWidget {
  const ScaffoldTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("MyAppBar"),
        centerTitle: true,
      ),
      body: const Center(
          child: Text(
        "Hello Flutter",
        style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            backgroundColor: Colors.green),
      )),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            // backgroundColor: Colors.amber,
            icon: Icon(Icons.home),
            label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
      ]),
    );
  }
}
