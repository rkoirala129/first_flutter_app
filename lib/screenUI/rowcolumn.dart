import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(color: Colors.amber, width: 75, height: 150),
          Container(color: Colors.red, width: 50, height: 50),
          Container(color: Colors.green, width: 100, height: 100),
        ],
      ),
    );
  }
}
