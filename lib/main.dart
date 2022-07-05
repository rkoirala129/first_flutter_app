import 'package:first_flutter_app/screenUI/bottomnavigation.dart';
import 'package:first_flutter_app/screenUI/buttonwidget.dart';
import 'package:first_flutter_app/screenUI/drawerwidget.dart';
import 'package:first_flutter_app/screenUI/home.dart';
import 'package:first_flutter_app/screenUI/containerwidget.dart';
import 'package:first_flutter_app/screenUI/imagewidget.dart';
import 'package:first_flutter_app/screenUI/listViewWidget.dart';
import 'package:first_flutter_app/screenUI/listviewtypes.dart';
import 'package:first_flutter_app/screenUI/pageviewwidget.dart';
import 'package:first_flutter_app/screenUI/rowcolumn.dart';
import 'package:first_flutter_app/screenUI/scaffoldtext.dart';
import 'package:first_flutter_app/screenUI/tabbarwidget.dart';
import 'package:first_flutter_app/screenUI/textfieldwidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const ListViewTypes(),
    );
  }
}
