import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonWidget"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.redAccent,
                  onPrimary: Colors.yellow),
              onPressed: () {
                print("Elevated button pressed.");
              },
              child: Text("Elevated Button"),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(280, 70),
                textStyle: TextStyle(fontSize: 24),
                primary: Colors.redAccent,
                side: const BorderSide(width: 3, color: Colors.greenAccent),
              ),
              onPressed: () {
                print("Outlined button pressed.");
              },
              child: Text("Outlined Button"),
            ),
            const SizedBox(
              height: 15,
            ),
            IconButton(
              iconSize: 70,
              onPressed: () {
                print("Icon Button  pressed.");
              },
              icon: const Icon(
                Icons.home,
                color: Colors.pink,
              ),
            )
          ],
        ),
      ),
    );
  }
}
