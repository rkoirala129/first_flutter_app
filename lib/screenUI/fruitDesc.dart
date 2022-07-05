import 'package:first_flutter_app/model/fruit.dart';
import 'package:flutter/material.dart';

class FruitDetail extends StatelessWidget {
  final FruitModel fruitModel;

  const FruitDetail({Key? key, required this.fruitModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fruitModel.name),
      ),
      body: Column(
        children: [
          Image.network(fruitModel.imageUrl),
          Text(fruitModel.description),
        ],
      ),
    );
  }
}
