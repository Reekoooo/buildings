import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomAppBar(
          elevation: 12,
          color: Colors.red,
          child: Text('Bottom NavBar'),
        ),
        body: Center(
          child: Text('Home Page'),
        ));
  }
}
