import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Usuários"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: ListView(
          children: [],
        )));
  }
}
