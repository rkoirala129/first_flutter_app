import 'package:flutter/material.dart';

class StateManagement extends StatelessWidget {
  const StateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = "Data here.";

  void changeValue(String newData) {
    setState(() {
      text = newData;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text(text),
      ),
      body: Screen2(
        text2: text,
        changeData: changeValue,
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  String text2;
  final Function(String) changeData;
  Screen2({Key? key, required this.text2, required this.changeData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Center(
      child: Container(
        height: 500,
        width: 300,
        color: Colors.amberAccent,
        alignment: Alignment.center,
        child: Screen3(
          text3: text2,
          changeData: changeData,
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  String text3;
  final Function(String) changeData;
  Screen3({Key? key, required this.text3, required this.changeData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      height: 300,
      width: 200,
      color: Colors.redAccent,
      child: Screen4(
        text4: text3,
        changedata: changeData,
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  String text4;
  final Function(String) changedata;
  Screen4({Key? key, required this.text4, required this.changedata})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text4),
          ElevatedButton(
            onPressed: () {
              changedata("Sunway College.");
            },
            child: Text('Change data'),
          ),
        ],
      ),
    );
  }
}
