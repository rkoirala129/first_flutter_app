import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lst = List.generate(100, (index) => "$index");
    final lst1 = ["Nepal", "India", "Japan", "USA", "Sri Lanka"];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return ListTile(
                onTap: () {
                  print(index.toString());
                },
                title: Text(lst1[index]),
                subtitle: Text("Country name"),
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 96, 61, 49),
                  child: Text(lst1[index][0]),
                ),
                trailing: Icon(Icons.add_sharp));
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Colors.blue,
              ),
          itemCount: lst1.length),
    );
  }
}
