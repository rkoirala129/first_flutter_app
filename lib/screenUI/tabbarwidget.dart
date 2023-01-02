import 'package:first_flutter_app/screenUI/imagewidget.dart';
import 'package:flutter/material.dart';

import 'listViewWidget.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Tab Bar"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Tab 1",
            ),
            Tab(
              icon: Icon(Icons.star),
              text: "Tab 2",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Tab 3",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.yellow,
              child: Center(
                child: Text(
                  "Tab 1",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            ListViewWidget(),
            Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  "Tab 3",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
