import 'package:first_flutter_app/screenUI/myThirdPage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String name, email, address;

  SecondPage({required this.name, required this.email, required this.address});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  int? sum;
  String aSum = "";
  String mytext = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : ${widget.name}"),
            Text("Email : ${widget.email}"),
            Text("Address : ${widget.address}"),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _num1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter 1st number:"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _num2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter 2nd number:"),
              ),
            ),
            ElevatedButton(
              onPressed: (() {
                int fnum = int.parse(_num1.text);
                int snum = int.parse(_num2.text);
                int summ = fnum + snum;
                print(summ);

                setState(() {
                  sum = summ;
                  aSum = sum.toString();
                  mytext = "Sum : ${aSum}";
                });
              }),
              child: Text("Add"),
            ),
            SizedBox(
              height: 25,
            ),
            Text(mytext),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ThirdPage()));
              }),
              child: Text("Go to Third Page"),
            )
          ],
        ),
      ),
    );
  }
}
