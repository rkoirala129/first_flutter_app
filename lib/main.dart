import 'package:first_flutter_app/auth/login.dart';
import 'package:first_flutter_app/screenUI/ProviderSM.dart';
import 'package:first_flutter_app/screenUI/bottomnavigation.dart';
import 'package:first_flutter_app/screenUI/buttonwidget.dart';
import 'package:first_flutter_app/screenUI/clickableListView.dart';
import 'package:first_flutter_app/screenUI/drawerwidget.dart';
import 'package:first_flutter_app/screenUI/firebasecrud.dart';
import 'package:first_flutter_app/screenUI/home.dart';
import 'package:first_flutter_app/screenUI/containerwidget.dart';
import 'package:first_flutter_app/screenUI/imagewidget.dart';
import 'package:first_flutter_app/screenUI/listViewWidget.dart';
import 'package:first_flutter_app/screenUI/listviewtypes.dart';
import 'package:first_flutter_app/screenUI/myFirstPage.dart';
import 'package:first_flutter_app/screenUI/rowcolumn.dart';
import 'package:first_flutter_app/screenUI/scaffoldtext.dart';
import 'package:first_flutter_app/screenUI/smProvider.dart';
import 'package:first_flutter_app/screenUI/sqliteCrud.dart';
import 'package:first_flutter_app/screenUI/statemanagement.dart';
import 'package:first_flutter_app/screenUI/tabbarwidget.dart';
import 'package:first_flutter_app/screenUI/testfile.dart';
import 'package:first_flutter_app/screenUI/textfieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'sqlite_crud/screens/notes_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.amber));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.purple,
      ),
      home: LoginScreen(),
    );
  }
}
