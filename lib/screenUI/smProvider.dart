import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderSM extends StatelessWidget {
  const ProviderSM({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(
            // title: Text(Provider.of<AppData>(context).name),
            // title: Text(context.watch<AppData>().name),
            title: Consumer<AppData>(
              builder: (context, value, child) {
                //return Text(context.watch<AppData>().name);
                return Text(value.name);
              },
            ),
          ),
          body: Screen2(),
        );
      },
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Center(
      child: Container(
        height: 500,
        width: 300,
        color: Colors.amberAccent,
        alignment: Alignment.center,
        child: Screen3(),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      height: 300,
      width: 200,
      color: Colors.redAccent,
      child: Screen4(),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Text(Provider.of<AppData>(context).name),
          // Text(context.watch<AppData>().name),
          Consumer<AppData>(
            builder: (context, value, child) {
              //return Text(context.watch<AppData>().name);
              return Text(value.name);
            },
          ),

          ElevatedButton(
            onPressed: () {
              // Provider.of<AppData>(context, listen: false)
              //     .changeName("Sunway College");

              context.read<AppData>().changeName("Ravi Shrestha");
            },
            child: Text('Change data'),
          ),
        ],
      ),
    );
  }
}

class AppData with ChangeNotifier {
  String _name = "Rupak Koirala";

  void changeName(String data) {
    _name = data;
    notifyListeners();
  }

  String get name => _name;
}
