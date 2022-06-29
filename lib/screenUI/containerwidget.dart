import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: () {
          print("Clicked");
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(50, 60, 40, 30),
          padding: EdgeInsets.all(30),
          child: Text("Flutter Development"),
          //alignment: Alignment.center,
          //height: 70,
          //width: 300,
          // constraints: BoxConstraints(
          //     minHeight: 20, maxHeight: 200, minWidth: 100, maxWidth: 200),
          decoration: BoxDecoration(
            color: Colors.cyanAccent,
            borderRadius: BorderRadius.circular(10),
            // shape: BoxShape.circle,
            border: Border.all(color: Colors.red, width: 5),
          ),
        ),
      ),
    );
  }
}
