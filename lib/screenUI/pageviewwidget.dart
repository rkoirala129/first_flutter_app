import 'package:first_flutter_app/screenUI/buttonwidget.dart';
import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                controller.previousPage(
                    duration: Duration(microseconds: 1000),
                    curve: Curves.easeIn);
              },
              icon: Icon(Icons.arrow_left)),
          IconButton(
              onPressed: () {
                controller.nextPage(
                    duration: Duration(microseconds: 1000),
                    curve: Curves.bounceIn);
              },
              icon: Icon(Icons.arrow_right)),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        //scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          print(index);
        },
        children: [
          Container(
            color: Colors.red,
            child: Center(
                child: Text(
              "Page 1",
              style: TextStyle(fontSize: 35),
            )),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text(
                "Page 2",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text(
                "Page 3",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          ButtonWidget(),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text(
                "Page 4",
                style: TextStyle(fontSize: 35),
              ),
            ),
          )
        ],
      ),
    );
  }
}
