import 'package:flutter/material.dart';

class CardViewWidget extends StatefulWidget {
  const CardViewWidget({Key? key}) : super(key: key);

  @override
  State<CardViewWidget> createState() => _CardViewWidgetState();
}

class _CardViewWidgetState extends State<CardViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Card View Widget"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 300,
              child: Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.red,
                elevation: 10,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "assets/universe.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
