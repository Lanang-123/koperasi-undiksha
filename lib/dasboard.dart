import 'package:flutter/material.dart';
import 'package:project1/auth.dart';

class DashboarPage extends StatefulWidget {
  const DashboarPage({super.key});

  @override
  State<DashboarPage> createState() => _DashboarPageState();
}

class _DashboarPageState extends State<DashboarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Koperasi Undiksha"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
            icon: Icon(Icons.logout),
            color: Colors.white,
          )
        ],
      ),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
