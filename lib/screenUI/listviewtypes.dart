import 'package:flutter/material.dart';

class ListViewTypes extends StatefulWidget {
  const ListViewTypes({Key? key}) : super(key: key);

  @override
  State<ListViewTypes> createState() => _ListViewTypesState();
}

class _ListViewTypesState extends State<ListViewTypes> {
  @override
  Widget build(BuildContext context) {
    final list1 = ["Sunway ", "Global", "LBEF", "Uniglobe", "Softwarica"];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     // Text("Hello"),
      //     // Text("Sunway"),
      //     // Text("Hello"),
      //     // Text("Sunway"),
      //     // Text("Hello"),
      //     // Text("Sunway"),
      //     // Text("Hello"),
      //     // Text("Sunway"),
      //     // Text("Sunway"),
      //     // Text("Hello"),
      //     // Text("Sunway"),
      //     ListTile(
      //       title: Text("Sunway International"),
      //       subtitle: Text("BCU"),
      //       leading: Icon(
      //         Icons.star,
      //         color: Colors.orange,
      //       ),
      //     ),
      //     ListTile(
      //       title: Text("Nami International"),
      //       subtitle: Text("BIT"),
      //       trailing: Icon(
      //         Icons.favorite,
      //         color: Colors.pink,
      //       ),
      //     ),
      //     ListTile(
      //       title: Text("Global International"),
      //       subtitle: Text("BIT"),
      //       leading: CircleAvatar(
      //         backgroundColor: Colors.brown,
      //         child: Text("GC"),
      //       ),
      //       trailing: Icon(
      //         Icons.favorite,
      //         color: Colors.pink,
      //       ),
      //     )
      //   ],
      // ),

      // body: ListView.builder(
      //     itemCount: list1.length,
      //     itemBuilder: ((context, index) {
      //       return ListTile(
      //         onTap: (() {
      //           print('Item pressed.');
      //           print(index.toString());
      //         }),
      //         title: Text(list1[index]),
      //         subtitle: Text("IT Colleges"),
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.brown,
      //           child: Text(list1[index][0]),
      //         ),
      //         trailing: Icon(
      //           Icons.favorite,
      //           color: Colors.pink,
      //         ),
      //       );
      //     })),

      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.blueGrey,
              ),
          itemCount: list1.length,
          itemBuilder: ((context, index) {
            return ListTile(
              onTap: (() {
                print('Item pressed.');
                print(index.toString());
              }),
              title: Text(list1[index]),
              subtitle: Text("IT Colleges"),
              leading: CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text(list1[index][0]),
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
            );
          })),
    );
  }
}
