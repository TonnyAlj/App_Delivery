import 'package:delivery_application/controllers/app_controller.dart';
import 'package:flutter/material.dart';

class HomeScreean extends StatefulWidget {
  const HomeScreean({super.key});

  @override
  State<HomeScreean> createState() => _HomeScreeanState();
}

class _HomeScreeanState extends State<HomeScreean> {
  int counter = 0;
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(
          child: Text(
            'Fome D+',
          ),
        ),
      ),
      body: //Center(
          //child: GestureDetector(
          //child: Text(
          //  'Contador: $counter',
          //  style: const TextStyle(fontSize: 20),
          // ),
          // onTap: () {
          //   setState(() {
          //     counter++;
          //   });
          //  },
          // ),
          //  ),
          Center(
        child: Switch(
            value: AppController.instance.isDartTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
              setState(() {
                light = value;
              });
            }),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
              leading: const Icon(Icons.star),
              title: const Text("Favoritos"),
              subtitle: const Text("meus favoritos..."),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no favoritos');
              }),
          ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Sair"),
              subtitle: const Text("Sair do app..."),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();Navigator.of(context).pop();
              })
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}
