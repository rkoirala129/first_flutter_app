import 'package:first_flutter_app/model/fruit.dart';
import 'package:first_flutter_app/screenUI/fruitDesc.dart';
import 'package:flutter/material.dart';

class MyClickableList extends StatefulWidget {
  const MyClickableList({Key? key}) : super(key: key);

  @override
  State<MyClickableList> createState() => _MyClickableListState();
}

class _MyClickableListState extends State<MyClickableList> {
  static List<String> fruitname = [
    "Banana",
    "Grapes",
    "Orange",
    "Apple",
    "Guava"
  ];

  static List url = [
    'https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'
  ];

  final List<FruitModel> FruitList = List.generate(
      fruitname.length,
      (index) => FruitModel("${fruitname[index]}", "${url[index]}",
          "${fruitname[index]} Description"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
          itemCount: FruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(FruitList[index].name),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(FruitList[index].imageUrl),
                ),
                onTap: () {
                  final FruitModel fruitModel;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          FruitDetail(fruitModel: FruitList[index])));
                },
              ),
            );
          }),
    );
  }
}
