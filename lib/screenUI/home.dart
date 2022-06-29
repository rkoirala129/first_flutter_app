import 'package:first_flutter_app/screenUI/bottomnavigation.dart';
import 'package:first_flutter_app/screenUI/buttonwidget.dart';
import 'package:first_flutter_app/screenUI/cardview.dart';
import 'package:first_flutter_app/screenUI/containerwidget.dart';
import 'package:first_flutter_app/screenUI/drawerwidget.dart';
import 'package:first_flutter_app/screenUI/imagewidget.dart';
import 'package:first_flutter_app/screenUI/listViewWidget.dart';
import 'package:first_flutter_app/screenUI/pageviewwidget.dart';
import 'package:first_flutter_app/screenUI/rowcolumn.dart';
import 'package:first_flutter_app/screenUI/tabbarwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Basics"),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ButtonWidget(),
                    ));
              },
              child: Text("Buttons"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.greenAccent,
                  onPrimary: Colors.black),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageWidget(),
                    ));
              },
              child: Text("Images"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.yellowAccent,
                  onPrimary: Colors.red),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardViewWidget(),
                    ));
              },
              child: Text("CardView"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.blue,
                  onPrimary: Colors.amber),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContainerWidget(),
                    ));
              },
              child: Text("Container"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.blueGrey,
                  onPrimary: Colors.red),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewWidget(),
                    ));
              },
              child: Text("List View"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.green,
                  onPrimary: Colors.red),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageViewWidget(),
                    ));
              },
              child: Text("Page View"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.pink,
                  onPrimary: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabBarWidget(),
                    ));
              },
              child: Text("Tab View"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.orange,
                  onPrimary: Colors.green),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigationbar(),
                    ));
              },
              child: Text("Bottom Navigation"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.blue,
                  onPrimary: Colors.black),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Drawerwidget(),
                    ));
              },
              child: Text("Drawer"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 70),
                  textStyle: TextStyle(fontSize: 24),
                  primary: Colors.redAccent,
                  onPrimary: Colors.black),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RowColumn(),
                    ));
              },
              child: Text("Row Column"),
            ),
          ],
        ),
      ),
    );
  }
}
