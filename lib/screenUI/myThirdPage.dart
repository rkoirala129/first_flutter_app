import 'package:first_flutter_app/screenUI/clickableListView.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page."),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: Text("Go to Second  Page"),
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.popUntil(context, ModalRoute.withName("/"));
              }),
              child: Text("Go to First  Page"),
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyClickableList()));
              }),
              child: Text("Go to List View"),
            ),
          ],
        ),
      ),
    );
  }
}
