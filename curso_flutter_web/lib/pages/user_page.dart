import 'package:curso_flutter_web/drawers/menu_drawers.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Curso de Flutter Web'),
        backgroundColor: Colors.green[600],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Card(
                  color: Colors.green[300],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0))),
                  margin: const EdgeInsets.only(
                      left: 0, top: 0, right: 0, bottom: 0),
                  child: Center(
                    child: Column(
                      children: const <Widget>[Text('Prueba')],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: SizedBox(
                      child: _products(),
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _products() {}
}
