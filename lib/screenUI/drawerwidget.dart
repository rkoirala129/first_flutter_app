import 'package:flutter/material.dart';

class Drawerwidget extends StatefulWidget {
  const Drawerwidget({Key? key}) : super(key: key);

  @override
  State<Drawerwidget> createState() => _DrawerwidgetState();
}

class _DrawerwidgetState extends State<Drawerwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 150,
                child: ClipOval(
                  child: Image.asset(
                    "assets/istockphoto-1286833440-612x612.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              accountName: Text(
                "Rupak Koirala",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              accountEmail: Text("abc@gmail.com"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Favourite"),
                    leading: Icon(Icons.favorite_border),
                  ),
                  ListTile(
                    title: Text("Workflow"),
                    leading: Icon(Icons.workspaces_outline),
                  ),
                  ListTile(
                    title: Text("Update"),
                    leading: Icon(Icons.update),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  ListTile(
                    title: Text("Plugins"),
                    leading: Icon(Icons.account_tree_outlined),
                  ),
                  ListTile(
                    title: Text("Notifications"),
                    leading: Icon(Icons.notifications_outlined),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer Widget"),
        centerTitle: true,
      ),
    );
  }
}
