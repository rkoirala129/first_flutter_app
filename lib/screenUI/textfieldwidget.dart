import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController controller = TextEditingController();
  String password = '';
  bool obsecure = false;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFieldWidget"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          TextField(
            textInputAction: TextInputAction.go,
            // keyboardType: TextInputType.number,
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              //label: Text("Email"),
              labelText: "Email Address",
              hintText: "name@email.com",
              // icon: Icon(Icons.mail),
              prefixIcon: Icon(Icons.mail),
              suffixIcon: controller.text.isEmpty
                  ? Container(
                      width: 0,
                    )
                  : IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        controller.clear();
                      },
                    ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            textInputAction: TextInputAction.go,
            // keyboardType: TextInputType.number,
            //controller: controller,
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
            obscureText: obsecure,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              //label: Text("Email"),
              labelText: "Password",
              hintText: "Enter your password.",
              errorText: "password is weak.",
              // icon: Icon(Icons.mail),
              prefixIcon: Icon(Icons.mail),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obsecure = !obsecure;
                  });
                },
                icon: obsecure
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(password)
        ],
      ),
    );
  }
}
